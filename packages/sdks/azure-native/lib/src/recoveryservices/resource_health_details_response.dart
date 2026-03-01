// ignore_for_file: unused_element, unnecessary_cast


/// Health Details for backup items.
class ResourceHealthDetailsResponse {
  /// Health Code
  final int code;
  /// Health Message
  final String message;
  /// Health Recommended Actions
  final List<String> recommendations;
  /// Health Title
  final String title;

  /// Creates a new [ResourceHealthDetailsResponse].
  /// [code] Health Code
  /// [message] Health Message
  /// [recommendations] Health Recommended Actions
  /// [title] Health Title
  ResourceHealthDetailsResponse({
    required this.code,
    required this.message,
    required this.recommendations,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'recommendations': recommendations,
      'title': title,
    };
  }

  factory ResourceHealthDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceHealthDetailsResponse(
      code: map['code'] as int,
      message: map['message'] as String,
      recommendations: (map['recommendations'] as List).cast<String>(),
      title: map['title'] as String,
    );
  }
}

