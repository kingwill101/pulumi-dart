// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SoarDomain resources.
class SoarDomainState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// SoarDomain display name, limited to 4096 characters.
  final pulumi.Input<String>? displayName;
  /// SoarDomain associated logical environments (json).
  final pulumi.Input<String>? environmentsJson;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The unique name(ID) of the SoarDomain.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/soarDomains/{soar_domain_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Id of the domain record.
  final pulumi.Input<String>? soarDomainId;

  /// Creates a new [SoarDomainState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] SoarDomain display name, limited to 4096 characters.
  /// [environmentsJson] SoarDomain associated logical environments (json).
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The unique name(ID) of the SoarDomain.
  /// [project] The ID of the project in which the resource belongs.
  /// [soarDomainId] Id of the domain record.
  const SoarDomainState({
    this.deletionPolicy,
    this.displayName,
    this.environmentsJson,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.soarDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'environmentsJson': ?environmentsJson,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'soarDomainId': ?soarDomainId,
    };
  }

  factory SoarDomainState.fromMap(Map<String, dynamic> map) {
    return SoarDomainState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentsJson: (() { final guardedValue = map['environmentsJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      soarDomainId: (() { final guardedValue = map['soarDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
