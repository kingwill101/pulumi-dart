// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions {
  /// The list of allowed values, if bounded. This field will be empty if there is a unbounded number of allowed values.
  final pulumi.Input<List<String>> allowedValues;

  /// Creates a new [GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions].
  /// [allowedValues] The list of allowed values, if bounded. This field will be empty if there is a unbounded number of allowed values.
  GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
    };
  }

  factory GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions(
      allowedValues: ((map['allowedValues'] as List).cast<String>()).input(),
    );
  }
}

