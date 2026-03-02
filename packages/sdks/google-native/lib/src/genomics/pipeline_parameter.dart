// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_copy.dart';

/// Parameters facilitate setting and delivering data into the pipeline's execution environment. They are defined at create time, with optional defaults, and can be overridden at run time. If `localCopy` is unset, then the parameter specifies a string that is passed as-is into the pipeline, as the value of the environment variable with the given name. A default value can be optionally specified at create time. The default can be overridden at run time using the inputs map. If no default is given, a value must be supplied at runtime. If `localCopy` is defined, then the parameter specifies a data source or sink, both in Google Cloud Storage and on the Docker container where the pipeline computation is run. The service account associated with the Pipeline (by default the project's Compute Engine service account) must have access to the Google Cloud Storage paths. At run time, the Google Cloud Storage paths can be overridden if a default was provided at create time, or must be set otherwise. The pipeline runner should add a key/value pair to either the inputs or outputs map. The indicated data copies will be carried out before/after pipeline execution, just as if the corresponding arguments were provided to `gsutil cp`. For example: Given the following `PipelineParameter`, specified in the `inputParameters` list: ``` {name: "input_file", localCopy: {path: "file.txt", disk: "pd1"}} ``` where `disk` is defined in the `PipelineResources` object as: ``` {name: "pd1", mountPoint: "/mnt/disk/"} ``` We create a disk named `pd1`, mount it on the host VM, and map `/mnt/pd1` to `/mnt/disk` in the docker container. At runtime, an entry for `input_file` would be required in the inputs map, such as: ``` inputs["input_file"] = "gs://my-bucket/bar.txt" ``` This would generate the following gsutil call: ``` gsutil cp gs://my-bucket/bar.txt /mnt/pd1/file.txt ``` The file `/mnt/pd1/file.txt` maps to `/mnt/disk/file.txt` in the Docker container. Acceptable paths are: Google Cloud storage pathLocal path file file glob directory For outputs, the direction of the copy is reversed: ``` gsutil cp /mnt/disk/file.txt gs://my-bucket/bar.txt ``` Acceptable paths are: Local pathGoogle Cloud Storage path file file file directory - directory must already exist glob directory - directory will be created if it doesn't exist One restriction due to docker limitations, is that for outputs that are found on the boot disk, the local path cannot be a glob and must be a file.
class PipelineParameter {
  /// The default value for this parameter. Can be overridden at runtime. If `localCopy` is present, then this must be a Google Cloud Storage path beginning with `gs://`.
  final pulumi.Input<String>? defaultValue;
  /// Human-readable description.
  final pulumi.Input<String>? description;
  /// If present, this parameter is marked for copying to and from the VM. `LocalCopy` indicates where on the VM the file should be. The value given to this parameter (either at runtime or using `defaultValue`) must be the remote path where the file should be.
  final pulumi.Input<LocalCopy>? localCopy;
  /// Name of the parameter - the pipeline runner uses this string as the key to the input and output maps in RunPipeline.
  final pulumi.Input<String> name;

  /// Creates a new [PipelineParameter].
  /// [defaultValue] The default value for this parameter. Can be overridden at runtime. If `localCopy` is present, then this must be a Google Cloud Storage path beginning with `gs://`.
  /// [description] Human-readable description.
  /// [localCopy] If present, this parameter is marked for copying to and from the VM. `LocalCopy` indicates where on the VM the file should be. The value given to this parameter (either at runtime or using `defaultValue`) must be the remote path where the file should be.
  /// [name] Name of the parameter - the pipeline runner uses this string as the key to the input and output maps in RunPipeline.
  PipelineParameter({
    this.defaultValue,
    this.description,
    this.localCopy,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'localCopy': ?pulumi.Input.mapOptionalInputValue<LocalCopy, Map<String, dynamic>>(localCopy, (value) => value.toMap()),
      'name': name,
    };
  }

  factory PipelineParameter.fromMap(Map<String, dynamic> map) {
    return PipelineParameter(
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      localCopy: map['localCopy'] == null ? null : (LocalCopy.fromMap((map['localCopy'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

