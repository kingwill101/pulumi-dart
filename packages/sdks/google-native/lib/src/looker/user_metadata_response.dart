// ignore_for_file: unused_element, unnecessary_cast


/// Metadata about users for a Looker instance.
class UserMetadataResponse {
  /// Optional. The number of additional developer users the instance owner has purchased.
  final int additionalDeveloperUserCount;
  /// Optional. The number of additional standard users the instance owner has purchased.
  final int additionalStandardUserCount;
  /// Optional. The number of additional viewer users the instance owner has purchased.
  final int additionalViewerUserCount;

  /// Creates a new [UserMetadataResponse].
  /// [additionalDeveloperUserCount] Optional. The number of additional developer users the instance owner has purchased.
  /// [additionalStandardUserCount] Optional. The number of additional standard users the instance owner has purchased.
  /// [additionalViewerUserCount] Optional. The number of additional viewer users the instance owner has purchased.
  UserMetadataResponse({
    required this.additionalDeveloperUserCount,
    required this.additionalStandardUserCount,
    required this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDeveloperUserCount': additionalDeveloperUserCount,
      'additionalStandardUserCount': additionalStandardUserCount,
      'additionalViewerUserCount': additionalViewerUserCount,
    };
  }

  factory UserMetadataResponse.fromMap(Map<String, dynamic> map) {
    return UserMetadataResponse(
      additionalDeveloperUserCount: map['additionalDeveloperUserCount'] as int,
      additionalStandardUserCount: map['additionalStandardUserCount'] as int,
      additionalViewerUserCount: map['additionalViewerUserCount'] as int,
    );
  }
}

