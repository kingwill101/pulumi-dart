// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_volume_csi.dart';
import 'get_service_template_spec_volume_empty_dir.dart';
import 'get_service_template_spec_volume_nf.dart';
import 'get_service_template_spec_volume_secret.dart';

class GetServiceTemplateSpecVolume {
  /// A filesystem specified by the Container Storage Interface (CSI).
  final List<GetServiceTemplateSpecVolumeCsi> csis;
  /// Ephemeral storage which can be backed by real disks (HD, SSD), network storage or memory (i.e. tmpfs). For now only in memory (tmpfs) is supported. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
  final List<GetServiceTemplateSpecVolumeEmptyDir> emptyDirs;
  /// The name of the Cloud Run Service.
  final String name;
  /// A filesystem backed by a Network File System share. This filesystem requires the
  /// run.googleapis.com/execution-environment annotation to be unset or set to "gen2"
  final List<GetServiceTemplateSpecVolumeNf> nfs;
  /// The secret's value will be presented as the content of a file whose
  /// name is defined in the item path. If no items are defined, the name of
  /// the file is the secret_name.
  final List<GetServiceTemplateSpecVolumeSecret> secrets;

  /// Creates a new [GetServiceTemplateSpecVolume].
  /// [csis] A filesystem specified by the Container Storage Interface (CSI).
  /// [emptyDirs] Ephemeral storage which can be backed by real disks (HD, SSD), network storage or memory (i.e. tmpfs). For now only in memory (tmpfs) is supported. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
  /// [name] The name of the Cloud Run Service.
  /// [nfs] A filesystem backed by a Network File System share. This filesystem requires the
  /// [secrets] The secret's value will be presented as the content of a file whose
  GetServiceTemplateSpecVolume({
    required this.csis,
    required this.emptyDirs,
    required this.name,
    required this.nfs,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csis': pulumi.Input.encodeList<GetServiceTemplateSpecVolumeCsi, Map<String, dynamic>>(csis, (value) => value.toMap()),
      'emptyDirs': pulumi.Input.encodeList<GetServiceTemplateSpecVolumeEmptyDir, Map<String, dynamic>>(emptyDirs, (value) => value.toMap()),
      'name': name,
      'nfs': pulumi.Input.encodeList<GetServiceTemplateSpecVolumeNf, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'secrets': pulumi.Input.encodeList<GetServiceTemplateSpecVolumeSecret, Map<String, dynamic>>(secrets, (value) => value.toMap()),
    };
  }

  factory GetServiceTemplateSpecVolume.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolume(
      csis: pulumi.Input.decodeList<GetServiceTemplateSpecVolumeCsi>(map['csis'], (value) => GetServiceTemplateSpecVolumeCsi.fromMap((value as Map).cast<String, dynamic>())),
      emptyDirs: pulumi.Input.decodeList<GetServiceTemplateSpecVolumeEmptyDir>(map['emptyDirs'], (value) => GetServiceTemplateSpecVolumeEmptyDir.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nfs: pulumi.Input.decodeList<GetServiceTemplateSpecVolumeNf>(map['nfs'], (value) => GetServiceTemplateSpecVolumeNf.fromMap((value as Map).cast<String, dynamic>())),
      secrets: pulumi.Input.decodeList<GetServiceTemplateSpecVolumeSecret>(map['secrets'], (value) => GetServiceTemplateSpecVolumeSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

