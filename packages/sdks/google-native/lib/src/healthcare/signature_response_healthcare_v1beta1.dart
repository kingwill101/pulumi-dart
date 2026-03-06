// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response_healthcare_v1beta1.dart';

/// User signature.
class SignatureResponseHealthcareV1beta1 {
  /// Optional. An image of the user's signature.
  final pulumi.Input<ImageResponseHealthcareV1beta1> image;
  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final pulumi.Input<Map<String, String>> metadata;
  /// Optional. Timestamp of the signature.
  final pulumi.Input<String> signatureTime;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  /// Creates a new [SignatureResponseHealthcareV1beta1].
  /// [image] Optional. An image of the user's signature.
  /// [metadata] Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  /// [signatureTime] Optional. Timestamp of the signature.
  /// [userId] User's UUID provided by the client.
  const SignatureResponseHealthcareV1beta1({
    required this.image,
    required this.metadata,
    required this.signatureTime,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': pulumi.Input.mapInputValue<ImageResponseHealthcareV1beta1, Map<String, dynamic>>(image, (value) => value.toMap()),
      'metadata': metadata,
      'signatureTime': signatureTime,
      'userId': userId,
    };
  }

  factory SignatureResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SignatureResponseHealthcareV1beta1(
      image: pulumi.Input.fromValue(ImageResponseHealthcareV1beta1.fromMap((map['image']! as Map).cast<String, dynamic>())),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      signatureTime: pulumi.Input.fromValue(map['signatureTime'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

