// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSecLabel {
  /// Specifies the base label for the domain's security configuration.
  final pulumi.Input<String?>? baseLabel;
  /// Sets the image label for the domain's security configuration.
  final pulumi.Input<String?>? imageLabel;
  /// Specifies the security label for the domain.
  final pulumi.Input<String?>? label;
  /// Configures the model for the domain's security label.
  final pulumi.Input<String?>? model;
  /// Controls if the domain's security label should be relabeled.
  final pulumi.Input<String?>? relabel;
  /// Sets the type of the security label for the domain.
  final pulumi.Input<String?>? type;

  /// Creates a new [DomainSecLabel].
  /// [baseLabel] Specifies the base label for the domain's security configuration.
  /// [imageLabel] Sets the image label for the domain's security configuration.
  /// [label] Specifies the security label for the domain.
  /// [model] Configures the model for the domain's security label.
  /// [relabel] Controls if the domain's security label should be relabeled.
  /// [type] Sets the type of the security label for the domain.
  const DomainSecLabel({
    this.baseLabel,
    this.imageLabel,
    this.label,
    this.model,
    this.relabel,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseLabel': ?baseLabel,
      'imageLabel': ?imageLabel,
      'label': ?label,
      'model': ?model,
      'relabel': ?relabel,
      'type': ?type,
    };
  }

  factory DomainSecLabel.fromMap(Map<String, dynamic> map) {
    return DomainSecLabel(
      baseLabel: (() { final guardedValue = map['baseLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageLabel: (() { final guardedValue = map['imageLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relabel: (() { final guardedValue = map['relabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
