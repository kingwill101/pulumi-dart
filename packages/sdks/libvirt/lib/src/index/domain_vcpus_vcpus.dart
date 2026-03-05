// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainVcpusVcpus {
  /// Specifies whether the virtual CPU is enabled or disabled, controlling its operational status in the VM.
  final pulumi.Input<String>? enabled;
  /// Configures whether the virtual CPU can be added or removed while the domain is running, allowing for dynamic resource management.
  final pulumi.Input<String>? hotpluggable;
  /// Identifies the virtual CPU by an integer ID, serving as a unique identifier within the domain configuration.
  final pulumi.Input<double>? id;
  /// Sets the order of the virtual CPUs, determining the significance of each vCPU's placement in relation to others.
  final pulumi.Input<double>? order;

  /// Creates a new [DomainVcpusVcpus].
  /// [enabled] Specifies whether the virtual CPU is enabled or disabled, controlling its operational status in the VM.
  /// [hotpluggable] Configures whether the virtual CPU can be added or removed while the domain is running, allowing for dynamic resource management.
  /// [id] Identifies the virtual CPU by an integer ID, serving as a unique identifier within the domain configuration.
  /// [order] Sets the order of the virtual CPUs, determining the significance of each vCPU's placement in relation to others.
  DomainVcpusVcpus({
    this.enabled,
    this.hotpluggable,
    this.id,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'hotpluggable': ?hotpluggable,
      'id': ?id,
      'order': ?order,
    };
  }

  factory DomainVcpusVcpus.fromMap(Map<String, dynamic> map) {
    return DomainVcpusVcpus(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hotpluggable: (() { final guardedValue = map['hotpluggable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

