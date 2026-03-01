// ignore_for_file: unused_element, unnecessary_cast


/// Indicates if the image template needs to be built on create/update
class ImageTemplateAutoRunResponse {
  /// Enabling this field will trigger an automatic build on image template creation or update.
  final String? state;

  /// Creates a new [ImageTemplateAutoRunResponse].
  /// [state] Enabling this field will trigger an automatic build on image template creation or update.
  ImageTemplateAutoRunResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory ImageTemplateAutoRunResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateAutoRunResponse(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

