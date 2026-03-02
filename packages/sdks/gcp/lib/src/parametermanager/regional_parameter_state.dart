// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_parameter_policy_member.dart';

/// Input properties used for looking up and filtering RegionalParameter resources.
class RegionalParameterState {
  /// The time at which the regional Parameter was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The format type of the regional parameter.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  final pulumi.Input<String>? format;
  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final pulumi.Input<String>? kmsKey;
  /// The labels assigned to this regional Parameter.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the regional parameter. eg us-central1
  final pulumi.Input<String>? location;
  /// The resource name of the regional Parameter. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  final pulumi.Input<String>? name;
  /// This must be unique within the project.
  final pulumi.Input<String>? parameterId;
  /// An object containing a unique resource identity tied to the regional parameter.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalParameterPolicyMember>>? policyMembers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The time at which the regional Parameter was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RegionalParameterState].
  /// [createTime] The time at which the regional Parameter was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [format] The format type of the regional parameter.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// [labels] The labels assigned to this regional Parameter.
  /// [location] The location of the regional parameter. eg us-central1
  /// [name] The resource name of the regional Parameter. Format:
  /// [parameterId] This must be unique within the project.
  /// [policyMembers] An object containing a unique resource identity tied to the regional parameter.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time at which the regional Parameter was updated.
  RegionalParameterState({
    this.createTime,
    this.effectiveLabels,
    this.format,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.parameterId,
    this.policyMembers,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'format': ?format,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parameterId': ?parameterId,
      'policyMembers': ?pulumi.Input.mapOptionalInputValue<List<RegionalParameterPolicyMember>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<RegionalParameterPolicyMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory RegionalParameterState.fromMap(Map<String, dynamic> map) {
    return RegionalParameterState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameterId: map['parameterId'] == null ? null : (map['parameterId']! as String).input(),
      policyMembers: map['policyMembers'] == null ? null : (pulumi.Input.decodeList<RegionalParameterPolicyMember>(map['policyMembers']!, (value) => RegionalParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

