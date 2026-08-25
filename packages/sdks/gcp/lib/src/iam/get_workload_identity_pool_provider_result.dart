// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_provider_aw.dart';
import 'get_workload_identity_pool_provider_oidc.dart';
import 'get_workload_identity_pool_provider_saml.dart';
import 'get_workload_identity_pool_provider_x509.dart';

/// Result data returned by getWorkloadIdentityPoolProvider.
class GetWorkloadIdentityPoolProviderResult {
  final String? attributeCondition;
  final Map<String, String>? attributeMapping;
  final List<GetWorkloadIdentityPoolProviderAw>? aws;
  final String? deletionPolicy;
  final String? description;
  final bool? disabled;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final List<GetWorkloadIdentityPoolProviderOidc>? oidcs;
  final String? project;
  final List<GetWorkloadIdentityPoolProviderSaml>? samls;
  final String? state;
  final String? workloadIdentityPoolId;
  final String? workloadIdentityPoolProviderId;
  final List<GetWorkloadIdentityPoolProviderX509>? x509s;

  /// Creates a new [GetWorkloadIdentityPoolProviderResult].
  /// [attributeCondition] Optional.
  /// [attributeMapping] Optional.
  /// [aws] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [disabled] Optional.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [oidcs] Optional.
  /// [project] Optional.
  /// [samls] Optional.
  /// [state] Optional.
  /// [workloadIdentityPoolId] Optional.
  /// [workloadIdentityPoolProviderId] Optional.
  /// [x509s] Optional.
  const GetWorkloadIdentityPoolProviderResult({
    this.attributeCondition,
    this.attributeMapping,
    this.aws,
    this.deletionPolicy,
    this.description,
    this.disabled,
    this.displayName,
    this.id,
    this.name,
    this.oidcs,
    this.project,
    this.samls,
    this.state,
    this.workloadIdentityPoolId,
    this.workloadIdentityPoolProviderId,
    this.x509s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCondition': ?attributeCondition,
      'attributeMapping': ?attributeMapping,
      'aws': ?(() { final guardedValue = aws; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderAw, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'oidcs': ?(() { final guardedValue = oidcs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderOidc, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'samls': ?(() { final guardedValue = samls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderSaml, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'workloadIdentityPoolId': ?workloadIdentityPoolId,
      'workloadIdentityPoolProviderId': ?workloadIdentityPoolProviderId,
      'x509s': ?(() { final guardedValue = x509s; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderX509, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWorkloadIdentityPoolProviderResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderResult(
      attributeCondition: (() { final guardedValue = map['attributeCondition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributeMapping: (() { final guardedValue = map['attributeMapping']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      aws: (() { final guardedValue = map['aws']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderAw>(guardedValue, (value) => GetWorkloadIdentityPoolProviderAw.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oidcs: (() { final guardedValue = map['oidcs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderOidc>(guardedValue, (value) => GetWorkloadIdentityPoolProviderOidc.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samls: (() { final guardedValue = map['samls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderSaml>(guardedValue, (value) => GetWorkloadIdentityPoolProviderSaml.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadIdentityPoolId: (() { final guardedValue = map['workloadIdentityPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadIdentityPoolProviderId: (() { final guardedValue = map['workloadIdentityPoolProviderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      x509s: (() { final guardedValue = map['x509s']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderX509>(guardedValue, (value) => GetWorkloadIdentityPoolProviderX509.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
