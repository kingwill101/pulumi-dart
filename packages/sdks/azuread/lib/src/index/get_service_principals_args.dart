// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_service_principals_get_service_principals_args_doc}
/// Arguments for getServicePrincipals.
/// {@endtemplate}
/// {@macro pulumi_index_get_service_principals_get_service_principals_args_doc}
class GetServicePrincipalsArgs {
  /// A list of client IDs of the applications associated with the service principals.
  final pulumi.Input<List<String>>? clientIds;
  /// A list of display names of the applications associated with the service principals.
  final pulumi.Input<List<String>>? displayNames;
  /// Ignore missing service principals and return all service principals that are found. The data source will still fail if no service principals are found. Defaults to false.
  final pulumi.Input<bool>? ignoreMissing;
  /// The object IDs of the service principals.
  final pulumi.Input<List<String>>? objectIds;
  /// When `true`, the data source will return all service principals. Cannot be used with `ignoreMissing`. Defaults to false.
  ///
  /// &gt; Either `returnAll`, or one of `clientIds`, `displayNames` or `objectIds` must be specified. These _may_ be specified as an empty list, in which case no results will be returned.
  final pulumi.Input<bool>? returnAll;

  /// Creates a new [GetServicePrincipalsArgs].
  /// [clientIds] A list of client IDs of the applications associated with the service principals.
  /// [displayNames] A list of display names of the applications associated with the service principals.
  /// [ignoreMissing] Ignore missing service principals and return all service principals that are found. The data source will still fail if no service principals are found. Defaults to false.
  /// [objectIds] The object IDs of the service principals.
  /// [returnAll] When `true`, the data source will return all service principals. Cannot be used with `ignoreMissing`. Defaults to false.
  const GetServicePrincipalsArgs({
    this.clientIds,
    this.displayNames,
    this.ignoreMissing,
    this.objectIds,
    this.returnAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'displayNames': ?displayNames,
      'ignoreMissing': ?ignoreMissing,
      'objectIds': ?objectIds,
      'returnAll': ?returnAll,
    };
  }

  factory GetServicePrincipalsArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalsArgs(
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayNames: (() { final guardedValue = map['displayNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ignoreMissing: (() { final guardedValue = map['ignoreMissing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      returnAll: (() { final guardedValue = map['returnAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
