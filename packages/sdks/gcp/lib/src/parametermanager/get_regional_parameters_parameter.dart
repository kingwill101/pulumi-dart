// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameters_parameter_policy_member.dart';

class GetRegionalParametersParameter {
  /// The time at which the regional parameter was created.
  final pulumi.Input<String> createTime;
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// The format type of the regional parameter.
  final pulumi.Input<String> format;
  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final pulumi.Input<String> kmsKey;
  /// The labels assigned to the regional parameter.
  final pulumi.Input<Map<String, String>> labels;
  /// The location of regional parameter.
  final pulumi.Input<String> location;
  /// The resource name of the regional parameter. Format: `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  final pulumi.Input<String> name;
  /// The unique name of the resource.
  final pulumi.Input<String> parameterId;
  /// An object containing a unique resource identity tied to the regional parameter. Structure is documented below.
  final pulumi.Input<List<GetRegionalParametersParameterPolicyMember>> policyMembers;
  /// The ID of the project.
  final pulumi.Input<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;
  /// The time at which the regional parameter was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetRegionalParametersParameter].
  /// [createTime] The time at which the regional parameter was created.
  /// [effectiveLabels] Required.
  /// [format] The format type of the regional parameter.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  /// [labels] The labels assigned to the regional parameter.
  /// [location] The location of regional parameter.
  /// [name] The resource name of the regional parameter. Format: `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  /// [parameterId] The unique name of the resource.
  /// [policyMembers] An object containing a unique resource identity tied to the regional parameter. Structure is documented below.
  /// [project] The ID of the project.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time at which the regional parameter was updated.
  GetRegionalParametersParameter({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.kmsKey,
    required this.labels,
    required this.location,
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
      'location': location,
      'name': name,
      'parameterId': parameterId,
      'policyMembers': pulumi.Input.mapInputValue<List<GetRegionalParametersParameterPolicyMember>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<GetRegionalParametersParameterPolicyMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': project,
      'pulumiLabels': pulumiLabels,
      'updateTime': updateTime,
    };
  }

  factory GetRegionalParametersParameter.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersParameter(
      createTime: (map['createTime'] as String).input(),
      effectiveLabels: ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      format: (map['format'] as String).input(),
      kmsKey: (map['kmsKey'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      parameterId: (map['parameterId'] as String).input(),
      policyMembers: (pulumi.Input.decodeList<GetRegionalParametersParameterPolicyMember>(map['policyMembers'], (value) => GetRegionalParametersParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: (map['project'] as String).input(),
      pulumiLabels: ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

