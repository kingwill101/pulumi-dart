// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_volume_csi.dart';
import 'service_template_spec_volume_empty_dir.dart';
import 'service_template_spec_volume_nfs.dart';
import 'service_template_spec_volume_secret.dart';

class ServiceTemplateSpecVolume {
  /// A filesystem specified by the Container Storage Interface (CSI).
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecVolumeCsi>? csi;
  /// Ephemeral storage which can be backed by real disks (HD, SSD), network storage or memory (i.e. tmpfs). For now only in memory (tmpfs) is supported. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecVolumeEmptyDir>? emptyDir;
  /// Volume's name.
  final pulumi.Input<String> name;
  /// A filesystem backed by a Network File System share. This filesystem requires the
  /// run.googleapis.com/execution-environment annotation to be unset or set to "gen2"
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecVolumeNfs>? nfs;
  /// The secret's value will be presented as the content of a file whose
  /// name is defined in the item path. If no items are defined, the name of
  /// the file is the secret_name.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecVolumeSecret>? secret;

  /// Creates a new [ServiceTemplateSpecVolume].
  /// [csi] A filesystem specified by the Container Storage Interface (CSI).
  /// [emptyDir] Ephemeral storage which can be backed by real disks (HD, SSD), network storage or memory (i.e. tmpfs). For now only in memory (tmpfs) is supported. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
  /// [name] Volume's name.
  /// [nfs] A filesystem backed by a Network File System share. This filesystem requires the
  /// [secret] The secret's value will be presented as the content of a file whose
  ServiceTemplateSpecVolume({
    this.csi,
    this.emptyDir,
    required this.name,
    this.nfs,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csi': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecVolumeCsi, Map<String, dynamic>>(csi, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecVolumeEmptyDir, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'name': name,
      'nfs': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecVolumeNfs, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecVolumeSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateSpecVolume.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecVolume(
      csi: map['csi'] == null ? null : (ServiceTemplateSpecVolumeCsi.fromMap((map['csi']! as Map).cast<String, dynamic>())).input(),
      emptyDir: map['emptyDir'] == null ? null : (ServiceTemplateSpecVolumeEmptyDir.fromMap((map['emptyDir']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      nfs: map['nfs'] == null ? null : (ServiceTemplateSpecVolumeNfs.fromMap((map['nfs']! as Map).cast<String, dynamic>())).input(),
      secret: map['secret'] == null ? null : (ServiceTemplateSpecVolumeSecret.fromMap((map['secret']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

