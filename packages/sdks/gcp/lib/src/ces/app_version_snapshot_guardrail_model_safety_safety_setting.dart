// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotGuardrailModelSafetySafetySetting {
  /// (Output)
  /// The harm category.
  /// Possible values:
  /// HARM_CATEGORY_HATE_SPEECH
  /// HARM_CATEGORY_DANGEROUS_CONTENT
  /// HARM_CATEGORY_HARASSMENT
  /// HARM_CATEGORY_SEXUALLY_EXPLICIT
  final pulumi.Input<String>? category;
  /// (Output)
  /// The harm block threshold.
  /// Possible values:
  /// BLOCK_LOW_AND_ABOVE
  /// BLOCK_MEDIUM_AND_ABOVE
  /// BLOCK_ONLY_HIGH
  /// BLOCK_NONE
  /// OFF
  final pulumi.Input<String>? threshold;

  /// Creates a new [AppVersionSnapshotGuardrailModelSafetySafetySetting].
  /// [category] (Output)
  /// [threshold] (Output)
  AppVersionSnapshotGuardrailModelSafetySafetySetting({
    this.category,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'threshold': ?threshold,
    };
  }

  factory AppVersionSnapshotGuardrailModelSafetySafetySetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailModelSafetySafetySetting(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as String).input(),
    );
  }
}

