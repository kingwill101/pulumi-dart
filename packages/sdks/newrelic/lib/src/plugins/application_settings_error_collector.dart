// ignore_for_file: unused_element, unnecessary_cast


class ApplicationSettingsErrorCollector {
  /// A list of expected error classes.
  final List<String>? expectedErrorClasses;
  /// A list of expected error codes(any status code between 100-900).
  final List<String>? expectedErrorCodes;
  /// A list of ignored error classes.
  final List<String>? ignoredErrorClasses;
  /// A list of ignored error codes(any status code between 100-900).
  final List<String>? ignoredErrorCodes;

  /// Creates a new [ApplicationSettingsErrorCollector].
  /// [expectedErrorClasses] A list of expected error classes.
  /// [expectedErrorCodes] A list of expected error codes(any status code between 100-900).
  /// [ignoredErrorClasses] A list of ignored error classes.
  /// [ignoredErrorCodes] A list of ignored error codes(any status code between 100-900).
  ApplicationSettingsErrorCollector({
    this.expectedErrorClasses,
    this.expectedErrorCodes,
    this.ignoredErrorClasses,
    this.ignoredErrorCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedErrorClasses': ?expectedErrorClasses,
      'expectedErrorCodes': ?expectedErrorCodes,
      'ignoredErrorClasses': ?ignoredErrorClasses,
      'ignoredErrorCodes': ?ignoredErrorCodes,
    };
  }

  factory ApplicationSettingsErrorCollector.fromMap(Map<String, dynamic> map) {
    return ApplicationSettingsErrorCollector(
      expectedErrorClasses: map['expectedErrorClasses'] == null ? null : (map['expectedErrorClasses'] as List).cast<String>(),
      expectedErrorCodes: map['expectedErrorCodes'] == null ? null : (map['expectedErrorCodes'] as List).cast<String>(),
      ignoredErrorClasses: map['ignoredErrorClasses'] == null ? null : (map['ignoredErrorClasses'] as List).cast<String>(),
      ignoredErrorCodes: map['ignoredErrorCodes'] == null ? null : (map['ignoredErrorCodes'] as List).cast<String>(),
    );
  }
}

