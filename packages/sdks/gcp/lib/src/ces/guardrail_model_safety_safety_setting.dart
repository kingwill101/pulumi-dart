// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailModelSafetySafetySetting {
  /// The harm category.
  /// Possible values:
  /// HARM_CATEGORY_HATE_SPEECH
  /// HARM_CATEGORY_DANGEROUS_CONTENT
  /// HARM_CATEGORY_HARASSMENT
  /// HARM_CATEGORY_SEXUALLY_EXPLICIT
  /// Possible values are: `HARM_CATEGORY_HATE_SPEECH`, `HARM_CATEGORY_DANGEROUS_CONTENT`, `HARM_CATEGORY_HARASSMENT`, `HARM_CATEGORY_SEXUALLY_EXPLICIT`.
  final pulumi.Input<String> category;
  /// The harm block threshold.
  /// Possible values:
  /// BLOCK_LOW_AND_ABOVE
  /// BLOCK_MEDIUM_AND_ABOVE
  /// BLOCK_ONLY_HIGH
  /// BLOCK_NONE
  /// OFF
  /// Possible values are: `BLOCK_LOW_AND_ABOVE`, `BLOCK_MEDIUM_AND_ABOVE`, `BLOCK_ONLY_HIGH`, `BLOCK_NONE`, `OFF`.
  final pulumi.Input<String> threshold;

  /// Creates a new [GuardrailModelSafetySafetySetting].
  /// [category] The harm category.
  /// [threshold] The harm block threshold.
  const GuardrailModelSafetySafetySetting({
    required this.category,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'threshold': threshold,
    };
  }

  factory GuardrailModelSafetySafetySetting.fromMap(Map<String, dynamic> map) {
    return GuardrailModelSafetySafetySetting(
      category: pulumi.Input.fromValue(map['category'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}

