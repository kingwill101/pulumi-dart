// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_directory_service_filter.dart';

/// {@template pulumi_index_get_connectivity_directory_service_get_connectivity_directory_service_args_doc}
/// Arguments for getConnectivityDirectoryService.
/// {@endtemplate}
/// {@macro pulumi_index_get_connectivity_directory_service_get_connectivity_directory_service_args_doc}
class GetConnectivityDirectoryServiceArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetConnectivityDirectoryServiceFilter?>? filter;
  final pulumi.Input<String?>? serviceId;

  /// Creates a new [GetConnectivityDirectoryServiceArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [serviceId] Optional.
  const GetConnectivityDirectoryServiceArgs({
    this.accountId,
    this.filter,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetConnectivityDirectoryServiceFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'serviceId': ?serviceId,
    };
  }

  factory GetConnectivityDirectoryServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetConnectivityDirectoryServiceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
