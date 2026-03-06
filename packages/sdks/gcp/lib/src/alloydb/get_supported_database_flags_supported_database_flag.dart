// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_database_flags_supported_database_flag_integer_restrictions.dart';
import 'get_supported_database_flags_supported_database_flag_string_restrictions.dart';

class GetSupportedDatabaseFlagsSupportedDatabaseFlag {
  /// Whether the database flag accepts multiple values. If true, a comma-separated list of stringified values may be specified.
  final pulumi.Input<bool> acceptsMultipleValues;
  /// The name of the database flag, e.g. "max_allowed_packets". The is a possibly key for the Instance.database_flags map field.
  final pulumi.Input<String> flagName;
  /// Restriction on `INTEGER` type value. Specifies the minimum value and the maximum value that can be specified, if applicable.
  final pulumi.Input<GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions> integerRestrictions;
  /// The name of the flag resource, following Google Cloud conventions, e.g.: * projects/{project}/locations/{location}/flags/{flag} This field currently has no semantic meaning.
  final pulumi.Input<String> name;
  /// Whether setting or updating this flag on an Instance requires a database restart. If a flag that requires database restart is set, the backend will automatically restart the database (making sure to satisfy any availability SLO's).
  final pulumi.Input<bool> requiresDbRestart;
  /// Restriction on `STRING` type value. The list of allowed values, if bounded. This field will be empty if there is a unbounded number of allowed values.
  final pulumi.Input<GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions> stringRestrictions;
  /// Major database engine versions for which this flag is supported. The supported values are `POSTGRES_14` and `DATABASE_VERSION_UNSPECIFIED`.
  final pulumi.Input<List<String>> supportedDbVersions;
  /// ValueType describes the semantic type of the value that the flag accepts. Regardless of the ValueType, the Instance.database_flags field accepts the stringified version of the value, i.e. "20" or "3.14". The supported values are `VALUE_TYPE_UNSPECIFIED`, `STRING`, `INTEGER`, `FLOAT` and `NONE`.
  final pulumi.Input<String> valueType;

  /// Creates a new [GetSupportedDatabaseFlagsSupportedDatabaseFlag].
  /// [acceptsMultipleValues] Whether the database flag accepts multiple values. If true, a comma-separated list of stringified values may be specified.
  /// [flagName] The name of the database flag, e.g. "max_allowed_packets". The is a possibly key for the Instance.database_flags map field.
  /// [integerRestrictions] Restriction on `INTEGER` type value. Specifies the minimum value and the maximum value that can be specified, if applicable.
  /// [name] The name of the flag resource, following Google Cloud conventions, e.g.: * projects/{project}/locations/{location}/flags/{flag} This field currently has no semantic meaning.
  /// [requiresDbRestart] Whether setting or updating this flag on an Instance requires a database restart. If a flag that requires database restart is set, the backend will automatically restart the database (making sure to satisfy any availability SLO's).
  /// [stringRestrictions] Restriction on `STRING` type value. The list of allowed values, if bounded. This field will be empty if there is a unbounded number of allowed values.
  /// [supportedDbVersions] Major database engine versions for which this flag is supported. The supported values are `POSTGRES_14` and `DATABASE_VERSION_UNSPECIFIED`.
  /// [valueType] ValueType describes the semantic type of the value that the flag accepts. Regardless of the ValueType, the Instance.database_flags field accepts the stringified version of the value, i.e. "20" or "3.14". The supported values are `VALUE_TYPE_UNSPECIFIED`, `STRING`, `INTEGER`, `FLOAT` and `NONE`.
  const GetSupportedDatabaseFlagsSupportedDatabaseFlag({
    required this.acceptsMultipleValues,
    required this.flagName,
    required this.integerRestrictions,
    required this.name,
    required this.requiresDbRestart,
    required this.stringRestrictions,
    required this.supportedDbVersions,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptsMultipleValues': acceptsMultipleValues,
      'flagName': flagName,
      'integerRestrictions': pulumi.Input.mapInputValue<GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions, Map<String, dynamic>>(integerRestrictions, (value) => value.toMap()),
      'name': name,
      'requiresDbRestart': requiresDbRestart,
      'stringRestrictions': pulumi.Input.mapInputValue<GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions, Map<String, dynamic>>(stringRestrictions, (value) => value.toMap()),
      'supportedDbVersions': supportedDbVersions,
      'valueType': valueType,
    };
  }

  factory GetSupportedDatabaseFlagsSupportedDatabaseFlag.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsSupportedDatabaseFlag(
      acceptsMultipleValues: pulumi.Input.fromValue(map['acceptsMultipleValues'] as bool),
      flagName: pulumi.Input.fromValue(map['flagName'] as String),
      integerRestrictions: pulumi.Input.fromValue(GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions.fromMap((map['integerRestrictions']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      requiresDbRestart: pulumi.Input.fromValue(map['requiresDbRestart'] as bool),
      stringRestrictions: pulumi.Input.fromValue(GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions.fromMap((map['stringRestrictions']! as Map).cast<String, dynamic>())),
      supportedDbVersions: pulumi.Input.fromValue((map['supportedDbVersions'] as List).cast<String>()),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}

