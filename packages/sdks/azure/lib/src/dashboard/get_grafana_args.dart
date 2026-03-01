// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grafana_identity.dart';

/// {@template pulumi_dashboard_get_grafana_get_grafana_args_doc}
/// Arguments for getGrafana.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_grafana_get_grafana_args_doc}
class GetGrafanaArgs {
  /// The managed identity of the grafana resource.
  final pulumi.Input<GetGrafanaIdentity>? identity;
  /// Name of the grafana dashboard.
  final pulumi.Input<String> name;
  /// Name of the resource group where resource belongs to.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGrafanaArgs].
  /// [identity] The managed identity of the grafana resource.
  /// [name] Name of the grafana dashboard.
  /// [resourceGroupName] Name of the resource group where resource belongs to.
  GetGrafanaArgs({
    pulumi.Output<GetGrafanaIdentity>? identity,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      identity = pulumi.Input.asOptionalInput<GetGrafanaIdentity>(identity),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<GetGrafanaIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGrafanaArgs.fromMap(Map<String, dynamic> map) {
    return GetGrafanaArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<GetGrafanaIdentity>(GetGrafanaIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

