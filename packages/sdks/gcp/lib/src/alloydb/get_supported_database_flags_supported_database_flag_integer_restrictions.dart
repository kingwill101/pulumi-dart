// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions {
  /// The maximum value that can be specified, if applicable.
  final pulumi.Input<String> maxValue;
  /// The minimum value that can be specified, if applicable.
  final pulumi.Input<String> minValue;

  /// Creates a new [GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions].
  /// [maxValue] The maximum value that can be specified, if applicable.
  /// [minValue] The minimum value that can be specified, if applicable.
  GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
    };
  }

  factory GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions(
      maxValue: (map['maxValue'] as String).input(),
      minValue: (map['minValue'] as String).input(),
    );
  }
}

