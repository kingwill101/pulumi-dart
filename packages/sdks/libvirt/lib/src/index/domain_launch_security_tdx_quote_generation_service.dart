// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainLaunchSecurityTdxQuoteGenerationService {
  /// Sets the path for the quote generation service used in TDX.
  final pulumi.Input<String>? path;

  /// Creates a new [DomainLaunchSecurityTdxQuoteGenerationService].
  /// [path] Sets the path for the quote generation service used in TDX.
  const DomainLaunchSecurityTdxQuoteGenerationService({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainLaunchSecurityTdxQuoteGenerationService.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecurityTdxQuoteGenerationService(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

