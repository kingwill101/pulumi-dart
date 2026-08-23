// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetServiceEndpointStoragePolicyDefinition {
  /// The description of this Subnet Service Endpoint Storage Policy Definition.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Subnet Service Endpoint Storage Policy Definition.
  final pulumi.Input<String> name;
  /// The type of service resources. Valid values are `Microsoft.Storage` or `Global`. When the `serviceResources` property contains resource IDs, this property must be `Microsoft.Storage`. When the `serviceResources` property contains Aliases, this property must be `Global`. Defaults to `Microsoft.Storage`.
  final pulumi.Input<String>? service;
  /// Specifies a list of resources or aliases that this Subnet Service Endpoint Storage Policy Definition applies to.
  ///
  /// &gt; **Note:** The `serviceResources` property must contain either Aliases or Resource IDs, but not both.
  final pulumi.Input<List<String>> serviceResources;

  /// Creates a new [SubnetServiceEndpointStoragePolicyDefinition].
  /// [description] The description of this Subnet Service Endpoint Storage Policy Definition.
  /// [name] The name which should be used for this Subnet Service Endpoint Storage Policy Definition.
  /// [service] The type of service resources. Valid values are `Microsoft.Storage` or `Global`. When the `serviceResources` property contains resource IDs, this property must be `Microsoft.Storage`. When the `serviceResources` property contains Aliases, this property must be `Global`. Defaults to `Microsoft.Storage`.
  /// [serviceResources] Specifies a list of resources or aliases that this Subnet Service Endpoint Storage Policy Definition applies to.
  const SubnetServiceEndpointStoragePolicyDefinition({
    this.description,
    required this.name,
    this.service,
    required this.serviceResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'service': ?service,
      'serviceResources': serviceResources,
    };
  }

  factory SubnetServiceEndpointStoragePolicyDefinition.fromMap(Map<String, dynamic> map) {
    return SubnetServiceEndpointStoragePolicyDefinition(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceResources: pulumi.Input.fromValue((map['serviceResources'] as List).cast<String>()),
    );
  }
}
