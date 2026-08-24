// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_connectivity_directory_services_get_connectivity_directory_services_args_doc}
/// Arguments for getConnectivityDirectoryServices.
/// {@endtemplate}
/// {@macro pulumi_index_get_connectivity_directory_services_get_connectivity_directory_services_args_doc}
class GetConnectivityDirectoryServicesArgs {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Available values: "tcp", "http".
  final pulumi.Input<String?>? type;

  /// Creates a new [GetConnectivityDirectoryServicesArgs].
  /// [accountId] Account identifier
  /// [maxItems] Max items to fetch, default: 1000
  /// [type] Available values: "tcp", "http".
  const GetConnectivityDirectoryServicesArgs({
    this.accountId,
    this.maxItems,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'type': ?type,
    };
  }

  factory GetConnectivityDirectoryServicesArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
