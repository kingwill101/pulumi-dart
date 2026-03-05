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
    this.applicationLoadBalancerId,
    this.fullyQualifiedDomainName,
    this.name,
    this.tags,
  });

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
      applicationLoadBalancerId: (() { final guardedValue = map['applicationLoadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

