// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalNetworkEndpoint resources.
class GlobalNetworkEndpointState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when networkEndpointType of the NEG is INTERNET_FQDN_PORT.
  final pulumi.Input<String?>? fqdn;
  /// The global network endpoint group this endpoint is part of.
  final pulumi.Input<String?>? globalNetworkEndpointGroup;
  /// IPv4 address external endpoint.
  final pulumi.Input<String?>? ipAddress;
  /// Port number of the external endpoint.
  final pulumi.Input<int?>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GlobalNetworkEndpointState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [fqdn] Fully qualified domain name of network endpoint.
  /// [globalNetworkEndpointGroup] The global network endpoint group this endpoint is part of.
  /// [ipAddress] IPv4 address external endpoint.
  /// [port] Port number of the external endpoint.
  /// [project] The ID of the project in which the resource belongs.
  const GlobalNetworkEndpointState({
    this.deletionPolicy,
    this.fqdn,
    this.globalNetworkEndpointGroup,
    this.ipAddress,
    this.port,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'fqdn': ?fqdn,
      'globalNetworkEndpointGroup': ?globalNetworkEndpointGroup,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'project': ?project,
    };
  }

  factory GlobalNetworkEndpointState.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalNetworkEndpointGroup: (() { final guardedValue = map['globalNetworkEndpointGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
