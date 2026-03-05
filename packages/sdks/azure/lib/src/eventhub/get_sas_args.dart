// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_sas_get_sas_args_doc}
/// Arguments for getSas.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_sas_get_sas_args_doc}
class GetSasArgs {
  /// The connection string for the Event Hub to which this SAS applies.
  final pulumi.Input<String> connectionString;
  /// The expiration time and date of this SAS. Must be a valid ISO-8601 format time/date string.
  final pulumi.Input<String> expiry;

  /// Creates a new [GetSasArgs].
  /// [connectionString] The connection string for the Event Hub to which this SAS applies.
  /// [expiry] The expiration time and date of this SAS. Must be a valid ISO-8601 format time/date string.
  GetSasArgs({
    required this.connectionString,
    required this.expiry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'expiry': expiry,
    };
  }

  factory GetSasArgs.fromMap(Map<String, dynamic> map) {
    return GetSasArgs(
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
    );
  }
}

