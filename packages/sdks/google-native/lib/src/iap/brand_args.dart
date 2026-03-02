// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_brand_args_doc}
/// The set of arguments for Brand.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_brand_args_doc}
class BrandArgs {
  /// Application name displayed on OAuth consent screen.
  final pulumi.Input<String>? applicationTitle;
  final pulumi.Input<String>? project;
  /// Support email displayed on the OAuth consent screen.
  final pulumi.Input<String>? supportEmail;

  /// Creates a new [BrandArgs].
  /// [applicationTitle] Application name displayed on OAuth consent screen.
  /// [project] Optional.
  /// [supportEmail] Support email displayed on the OAuth consent screen.
  BrandArgs({
    this.applicationTitle,
    this.project,
    this.supportEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTitle': ?applicationTitle,
      'project': ?project,
      'supportEmail': ?supportEmail,
    };
  }

  factory BrandArgs.fromMap(Map<String, dynamic> map) {
    return BrandArgs(
      applicationTitle: map['applicationTitle'] == null ? null : (map['applicationTitle']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      supportEmail: map['supportEmail'] == null ? null : (map['supportEmail']! as String).input(),
    );
  }
}

