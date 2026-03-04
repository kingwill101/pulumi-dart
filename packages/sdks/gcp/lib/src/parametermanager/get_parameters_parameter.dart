// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_parameter_policy_member.dart';

class GetParametersParameter {
  /// The time at which the parameter was created.
  final pulumi.Input<String> createTime;
  final pulumi.Input<Map<String, String>> effectiveLabels;

  /// The format type of the parameter.
  final pulumi.Input<String> format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final pulumi.Input<String> kmsKey;

  /// The labels assigned to the parameter.
  final pulumi.Input<Map<String, String>> labels;

  /// The resource name of the parameter. Format: `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  final pulumi.Input<String> name;

  /// The unique name of the resource.
  final pulumi.Input<String> parameterId;

  /// An object containing a unique resource identity tied to the parameter. Structure is documented below.
  final pulumi.Input<List<GetParametersParameterPolicyMember>> policyMembers;

  /// The ID of the project.
  final pulumi.Input<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;

  /// The time at which the parameter was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetParametersParameter].
  /// [createTime] The time at which the parameter was created.
  /// [effectiveLabels] Required.
  /// [format] The format type of the parameter.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  /// [labels] The labels assigned to the parameter.
  /// [name] The resource name of the parameter. Format: `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  /// [parameterId] The unique name of the resource.
  /// [policyMembers] An object containing a unique resource identity tied to the parameter. Structure is documented below.
  /// [project] The ID of the project.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time at which the parameter was updated.
  GetParametersParameter({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.kmsKey,
    required this.labels,
    required this.name,
    required this.parameterId,
    required this.policyMembers,
    required this.project,
    required this.pulumiLabels,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'effectiveLabels': effectiveLabels,
      'format': format,
      'kmsKey': kmsKey,
      'labels': labels,
      'name': name,
      'parameterId': parameterId,
      'policyMembers':
          pulumi.Input.mapInputValue<
            List<GetParametersParameterPolicyMember>,
            List<Map<String, dynamic>>
          >(
            policyMembers,
            (value) =>
                pulumi.Input.encodeList<
                  GetParametersParameterPolicyMember,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': project,
      'pulumiLabels': pulumiLabels,
      'updateTime': updateTime,
    };
  }

  factory GetParametersParameter.fromMap(Map<String, dynamic> map) {
    return GetParametersParameter(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      effectiveLabels: pulumi.Input.fromValue(
        (map['effectiveLabels'] as Map).cast<String, String>(),
      ),
      format: pulumi.Input.fromValue(map['format'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterId: pulumi.Input.fromValue(map['parameterId'] as String),
      policyMembers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetParametersParameterPolicyMember>(
          map['policyMembers']!,
          (value) => GetParametersParameterPolicyMember.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      project: pulumi.Input.fromValue(map['project'] as String),
      pulumiLabels: pulumi.Input.fromValue(
        (map['pulumiLabels'] as Map).cast<String, String>(),
      ),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
