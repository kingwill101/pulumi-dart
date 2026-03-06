// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSapVirtualInstanceInvokeSizingRecommendations.
class GetSapVirtualInstanceInvokeSizingRecommendationsResult {
  /// The deployment type. Eg: SingleServer/ThreeTier
  final String deploymentType;

  /// Creates a new [GetSapVirtualInstanceInvokeSizingRecommendationsResult].
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  const GetSapVirtualInstanceInvokeSizingRecommendationsResult({
    required this.deploymentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': deploymentType,
    };
  }

  factory GetSapVirtualInstanceInvokeSizingRecommendationsResult.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeSizingRecommendationsResult(
      deploymentType: map['deploymentType'] as String,
    );
  }
}

