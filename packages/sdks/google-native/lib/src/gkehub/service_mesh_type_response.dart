// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A unique identifier for the type of message. Display_name is intended to be human-readable, code is intended to be machine readable. There should be a one-to-one mapping between display_name and code. (i.e. do not re-use display_names or codes between message types.) See istio.analysis.v1alpha1.AnalysisMessageBase.Type
class ServiceMeshTypeResponse {
  /// A 7 character code matching `^IST[0-9]{4}$` or `^ASM[0-9]{4}$`, intended to uniquely identify the message type. (e.g. "IST0001" is mapped to the "InternalError" message type.)
  final pulumi.Input<String> code;
  /// A human-readable name for the message type. e.g. "InternalError", "PodMissingProxy". This should be the same for all messages of the same type. (This corresponds to the `name` field in open-source Istio.)
  final pulumi.Input<String> displayName;

  /// Creates a new [ServiceMeshTypeResponse].
  /// [code] A 7 character code matching `^IST[0-9]{4}$` or `^ASM[0-9]{4}$`, intended to uniquely identify the message type. (e.g. "IST0001" is mapped to the "InternalError" message type.)
  /// [displayName] A human-readable name for the message type. e.g. "InternalError", "PodMissingProxy". This should be the same for all messages of the same type. (This corresponds to the `name` field in open-source Istio.)
  const ServiceMeshTypeResponse({
    required this.code,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'displayName': displayName,
    };
  }

  factory ServiceMeshTypeResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshTypeResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

