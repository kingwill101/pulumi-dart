// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationSource {
  /// Application template revision URI.
  final pulumi.Input<String?>? applicationTemplateRevision;

  /// Creates a new [ApplicationSource].
  /// [applicationTemplateRevision] Application template revision URI.
  const ApplicationSource({
    this.applicationTemplateRevision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTemplateRevision': ?applicationTemplateRevision,
    };
  }

  factory ApplicationSource.fromMap(Map<String, dynamic> map) {
    return ApplicationSource(
      applicationTemplateRevision: (() { final guardedValue = map['applicationTemplateRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
