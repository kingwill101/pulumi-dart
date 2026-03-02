// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response.dart';

/// User signature.
class SignatureResponse {
  /// Optional. An image of the user's signature.
  final pulumi.Input<ImageResponse> image;
  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final pulumi.Input<Map<String, String>> metadata;
  /// Optional. Timestamp of the signature.
  final pulumi.Input<String> signatureTime;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  /// Creates a new [SignatureResponse].
  /// [image] Optional. An image of the user's signature.
  /// [metadata] Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  /// [signatureTime] Optional. Timestamp of the signature.
  /// [userId] User's UUID provided by the client.
  SignatureResponse({
    required this.image,
    required this.metadata,
    required this.signatureTime,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': pulumi.Input.mapInputValue<ImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'metadata': metadata,
      'signatureTime': signatureTime,
      'userId': userId,
    };
  }

  factory SignatureResponse.fromMap(Map<String, dynamic> map) {
    return SignatureResponse(
      image: (ImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      signatureTime: (map['signatureTime'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

