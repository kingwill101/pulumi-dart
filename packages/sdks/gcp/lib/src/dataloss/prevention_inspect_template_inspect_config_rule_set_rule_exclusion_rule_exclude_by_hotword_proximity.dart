// ignore_for_file: unused_element, unnecessary_cast


class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity {
  /// Number of characters after the finding to consider.
  final int? windowAfter;
  /// Number of characters before the finding to consider.
  final int? windowBefore;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider.
  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity(
      windowAfter: map['windowAfter'] == null ? null : map['windowAfter'] as int,
      windowBefore: map['windowBefore'] == null ? null : map['windowBefore'] as int,
    );
  }
}

