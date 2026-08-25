// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_policy_boolean_policy.dart';
import 'get_organization_policy_list_policy.dart';
import 'get_organization_policy_restore_policy.dart';

/// Result data returned by getOrganizationPolicy.
class GetOrganizationPolicyResult {
  final List<GetOrganizationPolicyBooleanPolicy>? booleanPolicies;
  final String? constraint;
  final String? deletionPolicy;
  final String? etag;
  final String? folder;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetOrganizationPolicyListPolicy>? listPolicies;
  final List<GetOrganizationPolicyRestorePolicy>? restorePolicies;
  final String? updateTime;
  final int? version;

  /// Creates a new [GetOrganizationPolicyResult].
  /// [booleanPolicies] Optional.
  /// [constraint] Optional.
  /// [deletionPolicy] Optional.
  /// [etag] Optional.
  /// [folder] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listPolicies] Optional.
  /// [restorePolicies] Optional.
  /// [updateTime] Optional.
  /// [version] Optional.
  const GetOrganizationPolicyResult({
    this.booleanPolicies,
    this.constraint,
    this.deletionPolicy,
    this.etag,
    this.folder,
    this.id,
    this.listPolicies,
    this.restorePolicies,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicies': ?(() { final guardedValue = booleanPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationPolicyBooleanPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'constraint': ?constraint,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'folder': ?folder,
      'id': ?id,
      'listPolicies': ?(() { final guardedValue = listPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationPolicyListPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'restorePolicies': ?(() { final guardedValue = restorePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationPolicyRestorePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory GetOrganizationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyResult(
      booleanPolicies: (() { final guardedValue = map['booleanPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationPolicyBooleanPolicy>(guardedValue, (value) => GetOrganizationPolicyBooleanPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      constraint: (() { final guardedValue = map['constraint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listPolicies: (() { final guardedValue = map['listPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationPolicyListPolicy>(guardedValue, (value) => GetOrganizationPolicyListPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      restorePolicies: (() { final guardedValue = map['restorePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationPolicyRestorePolicy>(guardedValue, (value) => GetOrganizationPolicyRestorePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
