// ignore_for_file: unused_element, unnecessary_cast

import 'image_healthcare_v1beta1.dart';

/// User signature.
class SignatureHealthcareV1beta1 {
  /// Optional. An image of the user's signature.
  final ImageHealthcareV1beta1? image;
  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String>? metadata;
  /// Optional. Timestamp of the signature.
  final String? signatureTime;
  /// User's UUID provided by the client.
  final String userId;

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
      'image': ?image == null ? null : image!.toMap(),
      'metadata': ?metadata,
      'signatureTime': ?signatureTime,
      'userId': userId,
    };
  }

  factory SignatureHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SignatureHealthcareV1beta1(
      image: map['image'] == null ? null : ImageHealthcareV1beta1.fromMap((map['image'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      signatureTime: map['signatureTime'] == null ? null : map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}

