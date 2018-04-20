package com.dem.springdemo.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.dem.springdemo.annotation.CourseCode;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

	private String coursePrefix;

	@Override
	public void initialize(CourseCode courseCode) {
		coursePrefix = courseCode.value();
	}

	@Override
	public boolean isValid(String code, ConstraintValidatorContext context) {
		boolean result;

		if (code != null) {
			result = code.startsWith(coursePrefix);
		} else {
			result = false;
		}
		return result;
	}
}
