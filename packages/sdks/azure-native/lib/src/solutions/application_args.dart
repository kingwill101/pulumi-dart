// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_jit_access_policy.dart';
import 'identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_solutions_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_solutions_application_args_doc}
class ApplicationArgs {
  /// The fully qualified path of managed application definition Id.
  final pulumi.Input<String>? applicationDefinitionId;
  /// The name of the managed application.
  final pulumi.Input<String>? applicationName;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// The managed application Jit access policy.
  final pulumi.Input<ApplicationJitAccessPolicy>? jitAccessPolicy;
  /// The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  final pulumi.Input<String> kind;
  /// Resource location
  final pulumi.Input<String>? location;
  /// ID of the resource that manages this resource.
  final pulumi.Input<String>? managedBy;
  /// The managed resource group Id.
  final pulumi.Input<String>? managedResourceGroupId;
  /// Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  final pulumi.Input<dynamic>? parameters;
  /// The plan information.
  final pulumi.Input<Plan>? plan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationDefinitionId] The fully qualified path of managed application definition Id.
  /// [applicationName] The name of the managed application.
  /// [identity] The identity of the resource.
  /// [jitAccessPolicy] The managed application Jit access policy.
  /// [kind] The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  /// [location] Resource location
  /// [managedBy] ID of the resource that manages this resource.
  /// [managedResourceGroupId] The managed resource group Id.
  /// [parameters] Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  /// [plan] The plan information.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the resource.
  /// [tags] Resource tags
  const ApplicationArgs({
    this.applicationDefinitionId,
    this.applicationName,
    this.identity,
    this.jitAccessPolicy,
    required this.kind,
    this.location,
    this.managedBy,
    this.managedResourceGroupId,
    this.parameters,
    this.plan,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionId': ?applicationDefinitionId,
      'applicationName': ?applicationName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'jitAccessPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationJitAccessPolicy, Map<String, dynamic>>(jitAccessPolicy, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedResourceGroupId': ?managedResourceGroupId,
      'parameters': ?parameters,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationDefinitionId: (() { final guardedValue = map['applicationDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jitAccessPolicy: (() { final guardedValue = map['jitAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationJitAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupId: (() { final guardedValue = map['managedResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
