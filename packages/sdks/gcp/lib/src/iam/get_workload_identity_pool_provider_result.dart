// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_provider_aw.dart';
import 'get_workload_identity_pool_provider_oidc.dart';
import 'get_workload_identity_pool_provider_saml.dart';
import 'get_workload_identity_pool_provider_x509.dart';

/// Result data returned by getWorkloadIdentityPoolProvider.
class GetWorkloadIdentityPoolProviderResult {
  final String attributeCondition;
  final Map<String, String> attributeMapping;
  final List<GetWorkloadIdentityPoolProviderAw> aws;
  final String description;
  final bool disabled;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetWorkloadIdentityPoolProviderOidc> oidcs;
  final String? project;
  final List<GetWorkloadIdentityPoolProviderSaml> samls;
  final String state;
  final String workloadIdentityPoolId;
  final String workloadIdentityPoolProviderId;
  final List<GetWorkloadIdentityPoolProviderX509> x509s;

  /// Creates a new [GetWorkloadIdentityPoolProviderResult].
  /// [attributeCondition] Required.
  /// [attributeMapping] Required.
  /// [aws] Required.
  /// [description] Required.
  /// [disabled] Required.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [oidcs] Required.
  /// [project] Optional.
  /// [samls] Required.
  /// [state] Required.
  /// [workloadIdentityPoolId] Required.
  /// [workloadIdentityPoolProviderId] Required.
  /// [x509s] Required.
  GetWorkloadIdentityPoolProviderResult({
    required this.attributeCondition,
    required this.attributeMapping,
    required this.aws,
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.id,
    required this.name,
    required this.oidcs,
    this.project,
    required this.samls,
    required this.state,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderId,
    required this.x509s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCondition': attributeCondition,
      'attributeMapping': attributeMapping,
      'aws':
          pulumi.Input.encodeList<
            GetWorkloadIdentityPoolProviderAw,
            Map<String, dynamic>
          >(aws, (value) => value.toMap()),
      'description': description,
      'disabled': disabled,
      'displayName': displayName,
      'id': id,
      'name': name,
      'oidcs':
          pulumi.Input.encodeList<
            GetWorkloadIdentityPoolProviderOidc,
            Map<String, dynamic>
          >(oidcs, (value) => value.toMap()),
      'project': ?project,
      'samls':
          pulumi.Input.encodeList<
            GetWorkloadIdentityPoolProviderSaml,
            Map<String, dynamic>
          >(samls, (value) => value.toMap()),
      'state': state,
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderId': workloadIdentityPoolProviderId,
      'x509s':
          pulumi.Input.encodeList<
            GetWorkloadIdentityPoolProviderX509,
            Map<String, dynamic>
          >(x509s, (value) => value.toMap()),
    };
  }

  factory GetWorkloadIdentityPoolProviderResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkloadIdentityPoolProviderResult(
      attributeCondition: map['attributeCondition'] as String,
      attributeMapping: (map['attributeMapping'] as Map).cast<String, String>(),
      aws: pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderAw>(
        map['aws']!,
        (value) => GetWorkloadIdentityPoolProviderAw.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      oidcs: pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderOidc>(
        map['oidcs']!,
        (value) => GetWorkloadIdentityPoolProviderOidc.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      samls: pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderSaml>(
        map['samls']!,
        (value) => GetWorkloadIdentityPoolProviderSaml.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      state: map['state'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
      workloadIdentityPoolProviderId:
          map['workloadIdentityPoolProviderId'] as String,
      x509s: pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderX509>(
        map['x509s']!,
        (value) => GetWorkloadIdentityPoolProviderX509.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
