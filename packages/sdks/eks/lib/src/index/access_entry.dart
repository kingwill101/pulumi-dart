// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry_type.dart';
import 'access_policy_association.dart';

/// Access entries allow an IAM principal to access your cluster.
///
/// You have the following options for authorizing an IAM principal to access Kubernetes objects on your cluster: Kubernetes role-based access control (RBAC), Amazon EKS, or both.
/// Kubernetes RBAC authorization requires you to create and manage Kubernetes Role , ClusterRole , RoleBinding , and ClusterRoleBinding objects, in addition to managing access entries. If you use Amazon EKS authorization exclusively, you don't need to create and manage Kubernetes Role , ClusterRole , RoleBinding , and ClusterRoleBinding objects.
class AccessEntry {
  /// The access policies to associate to the access entry.
  final pulumi.Input<Map<String, AccessPolicyAssociation>>? accessPolicies;
  /// A list of groups within Kubernetes to which the IAM principal is mapped to.
  final pulumi.Input<List<String>>? kubernetesGroups;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final pulumi.Input<String> principalArn;
  /// The tags to apply to the AccessEntry.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the new access entry. Valid values are STANDARD, FARGATE_LINUX, EC2_LINUX, and EC2_WINDOWS.
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or kubernetesGroup, and prevent associating access policies.
  final pulumi.Input<AccessEntryType>? type;
  /// Defaults to the principalArn if the principal is a user, else defaults to assume-role/session-name.
  final pulumi.Input<String>? username;

  /// Creates a new [AccessEntry].
  /// [accessPolicies] The access policies to associate to the access entry.
  /// [kubernetesGroups] A list of groups within Kubernetes to which the IAM principal is mapped to.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [tags] The tags to apply to the AccessEntry.
  /// [type] The type of the new access entry. Valid values are STANDARD, FARGATE_LINUX, EC2_LINUX, and EC2_WINDOWS.
  /// [username] Defaults to the principalArn if the principal is a user, else defaults to assume-role/session-name.
  AccessEntry({
    this.accessPolicies,
    this.kubernetesGroups,
    required this.principalArn,
    this.tags,
    this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<Map<String, AccessPolicyAssociation>, Map<String, Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeMapValues<AccessPolicyAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubernetesGroups': ?kubernetesGroups,
      'principalArn': principalArn,
      'tags': ?tags,
      'type': ?pulumi.Input.mapOptionalInputValue<AccessEntryType, String>(type, (value) => value.wireValue),
      'username': ?username,
    };
  }

  factory AccessEntry.fromMap(Map<String, dynamic> map) {
    return AccessEntry(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<AccessPolicyAssociation>(guardedValue, (value) => AccessPolicyAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kubernetesGroups: (() { final guardedValue = map['kubernetesGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalArn: pulumi.Input.fromValue(map['principalArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessEntryType.fromValue(guardedValue as String)); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

