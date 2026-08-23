// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameters_parameter_policy_member.dart';

class GetRegionalParametersParameter {
  /// The time at which the regional parameter was created.
  final pulumi.Input<String> createTime;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
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
  const GetRegionalParametersParameter({
    required this.createTime,
    required this.deletionPolicy,
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
      'deletionPolicy': deletionPolicy,
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      format: pulumi.Input.fromValue(map['format'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterId: pulumi.Input.fromValue(map['parameterId'] as String),
      policyMembers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionalParametersParameterPolicyMember>(map['policyMembers']!, (value) => GetRegionalParametersParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>()))),
      project: pulumi.Input.fromValue(map['project'] as String),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
