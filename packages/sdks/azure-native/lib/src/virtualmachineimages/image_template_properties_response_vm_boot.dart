// ignore_for_file: unused_element, unnecessary_cast


/// Optimization is applied on the image for a faster VM boot.
class ImageTemplatePropertiesResponseVmBoot {
  /// Enabling this field will improve VM boot time by optimizing the final customized image output.
  final String? state;

  /// Creates a new [ImageTemplatePropertiesResponseVmBoot].
  /// [state] Enabling this field will improve VM boot time by optimizing the final customized image output.
  ImageTemplatePropertiesResponseVmBoot({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory ImageTemplatePropertiesResponseVmBoot.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesResponseVmBoot(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

