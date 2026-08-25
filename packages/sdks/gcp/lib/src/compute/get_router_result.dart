// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_bgp.dart';
import 'get_router_md5_authentication_key.dart';
import 'get_router_param.dart';

/// Result data returned by getRouter.
class GetRouterResult {
  final List<GetRouterBgp>? bgps;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final bool? encryptedInterconnectRouter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetRouterMd5AuthenticationKey>? md5AuthenticationKeys;
  final String? name;
  final String? nccGateway;
  final String? network;
  final List<GetRouterParam>? params;
  final String? project;
  final String? region;
  final String? selfLink;

  /// Creates a new [GetRouterResult].
  /// [bgps] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [encryptedInterconnectRouter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [md5AuthenticationKeys] Optional.
  /// [name] Optional.
  /// [nccGateway] Optional.
  /// [network] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  const GetRouterResult({
    this.bgps,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.encryptedInterconnectRouter,
    this.id,
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
      'bgps': ?(() { final guardedValue = bgps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterBgp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'encryptedInterconnectRouter': ?encryptedInterconnectRouter,
      'id': ?id,
      'md5AuthenticationKeys': ?(() { final guardedValue = md5AuthenticationKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterMd5AuthenticationKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'nccGateway': ?nccGateway,
      'network': ?network,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetRouterResult.fromMap(Map<String, dynamic> map) {
    return GetRouterResult(
      bgps: (() { final guardedValue = map['bgps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterBgp>(guardedValue, (value) => GetRouterBgp.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptedInterconnectRouter: (() { final guardedValue = map['encryptedInterconnectRouter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      md5AuthenticationKeys: (() { final guardedValue = map['md5AuthenticationKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterMd5AuthenticationKey>(guardedValue, (value) => GetRouterMd5AuthenticationKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nccGateway: (() { final guardedValue = map['nccGateway']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterParam>(guardedValue, (value) => GetRouterParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
