// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_healthcare_v1beta1.dart';

/// User signature.
class SignatureHealthcareV1beta1 {
  /// Optional. An image of the user's signature.
  final pulumi.Input<ImageHealthcareV1beta1>? image;
  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Optional. Timestamp of the signature.
  final pulumi.Input<String>? signatureTime;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  /// Creates a new [SignatureHealthcareV1beta1].
  /// [image] Optional. An image of the user's signature.
  /// [metadata] Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  /// [signatureTime] Optional. Timestamp of the signature.
  /// [userId] User's UUID provided by the client.
  SignatureHealthcareV1beta1({
    this.image,
    this.metadata,
    this.signatureTime,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?pulumi.Input.mapOptionalInputValue<ImageHealthcareV1beta1, Map<String, dynamic>>(image, (value) => value.toMap()),
      'metadata': ?metadata,
      'signatureTime': ?signatureTime,
      'userId': userId,
    };
  }

  factory SignatureHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SignatureHealthcareV1beta1(
      image: map['image'] == null ? null : (ImageHealthcareV1beta1.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      signatureTime: map['signatureTime'] == null ? null : (map['signatureTime']! as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

