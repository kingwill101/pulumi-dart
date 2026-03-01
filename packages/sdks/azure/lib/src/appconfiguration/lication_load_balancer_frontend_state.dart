// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicationLoadBalancerFrontend resources.
class LicationLoadBalancerFrontendState {
  /// The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationLoadBalancerId;
  /// The Fully Qualified Domain Name of the DNS record associated to an Application Gateway for Containers Frontend.
  final pulumi.Input<String>? fullyQualifiedDomainName;
  /// The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers Frontend.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicationLoadBalancerFrontendState].
  /// [applicationLoadBalancerId] The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  /// [fullyQualifiedDomainName] The Fully Qualified Domain Name of the DNS record associated to an Application Gateway for Containers Frontend.
  /// [name] The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers Frontend.
  LicationLoadBalancerFrontendState({
    pulumi.Output<String>? applicationLoadBalancerId,
    pulumi.Output<String>? fullyQualifiedDomainName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationLoadBalancerId = pulumi.Input.asOptionalInput<String>(applicationLoadBalancerId),
      fullyQualifiedDomainName = pulumi.Input.asOptionalInput<String>(fullyQualifiedDomainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLoadBalancerId': ?applicationLoadBalancerId,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory LicationLoadBalancerFrontendState.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerFrontendState(
      applicationLoadBalancerId: map['applicationLoadBalancerId'] == null ? null : pulumi.Output.create<String>(map['applicationLoadBalancerId'] as String),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] == null ? null : pulumi.Output.create<String>(map['fullyQualifiedDomainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

