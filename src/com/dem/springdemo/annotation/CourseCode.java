package com.dem.springdemo.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.dem.springdemo.validation.CourseCodeConstraintValidator;

@Constraint(validatedBy = CourseCodeConstraintValidator.class)
@Target({ ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface CourseCode {

	public String value() default "DEM";

	public String message() default "Must start with DEM";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default {};

}
