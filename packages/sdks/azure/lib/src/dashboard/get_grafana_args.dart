// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grafana_identity.dart';

/// {@template pulumi_dashboard_get_grafana_get_grafana_args_doc}
/// Arguments for getGrafana.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_grafana_get_grafana_args_doc}
class GetGrafanaArgs {
  /// The managed identity of the grafana resource.
  final pulumi.Input<GetGrafanaIdentity?>? identity;
  /// Name of the grafana dashboard.
  final pulumi.Input<String> name;
  /// Name of the resource group where resource belongs to.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGrafanaArgs].
  /// [identity] The managed identity of the grafana resource.
  /// [name] Name of the grafana dashboard.
  /// [resourceGroupName] Name of the resource group where resource belongs to.
  const GetGrafanaArgs({
    this.identity,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<GetGrafanaIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGrafanaArgs.fromMap(Map<String, dynamic> map) {
    return GetGrafanaArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetGrafanaIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
