// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp.dart';
import 'router_md5_authentication_keys.dart';
import 'router_params.dart';

/// Input properties used for looking up and filtering Router resources.
class RouterState {
  /// BGP information specific to this router.
  /// Structure is documented below.
  final pulumi.Input<RouterBgp?>? bgp;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Indicates if a router is dedicated for use with encrypted VLAN
  /// attachments (interconnectAttachments).
  final pulumi.Input<bool?>? encryptedInterconnectRouter;
  /// Keys used for MD5 authentication.
  /// Structure is documented below.
  final pulumi.Input<RouterMd5AuthenticationKeys?>? md5AuthenticationKeys;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// A URI of an NCC Gateway spoke
  final pulumi.Input<String?>? nccGateway;
  /// A reference to the network to which this router belongs.
  final pulumi.Input<String?>? network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RouterParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Region where the router resides.
  final pulumi.Input<String?>? region;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [RouterState].
  /// [bgp] BGP information specific to this router.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [encryptedInterconnectRouter] Indicates if a router is dedicated for use with encrypted VLAN
  /// [md5AuthenticationKeys] Keys used for MD5 authentication.
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [nccGateway] A URI of an NCC Gateway spoke
  /// [network] A reference to the network to which this router belongs.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router resides.
  /// [selfLink] The URI of the created resource.
  const RouterState({
    this.bgp,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.encryptedInterconnectRouter,
    this.md5AuthenticationKeys,
    this.name,
    this.nccGateway,
    this.network,
    this.params,
    this.project,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<RouterBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'encryptedInterconnectRouter': ?encryptedInterconnectRouter,
      'md5AuthenticationKeys': ?pulumi.Input.mapOptionalInputValue<RouterMd5AuthenticationKeys, Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap()),
      'name': ?name,
      'nccGateway': ?nccGateway,
      'network': ?network,
      'params': ?pulumi.Input.mapOptionalInputValue<RouterParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory RouterState.fromMap(Map<String, dynamic> map) {
    return RouterState(
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedInterconnectRouter: (() { final guardedValue = map['encryptedInterconnectRouter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      md5AuthenticationKeys: (() { final guardedValue = map['md5AuthenticationKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterMd5AuthenticationKeys.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nccGateway: (() { final guardedValue = map['nccGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
