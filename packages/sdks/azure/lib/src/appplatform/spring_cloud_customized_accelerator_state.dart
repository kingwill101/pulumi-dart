// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_customized_accelerator_git_repository.dart';

/// Input properties used for looking up and filtering SpringCloudCustomizedAccelerator resources.
class SpringCloudCustomizedAcceleratorState {
  /// Specifies a list of accelerator tags.
  final pulumi.Input<List<String>>? acceleratorTags;
  /// Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`.
  final pulumi.Input<String>? acceleratorType;
  /// Specifies the description of the Spring Cloud Customized Accelerator.
  final pulumi.Input<String>? description;
  /// Specifies the display name of the Spring Cloud Customized Accelerator..
  final pulumi.Input<String>? displayName;
  /// A `git_repository` block as defined below.
  final pulumi.Input<SpringCloudCustomizedAcceleratorGitRepository>? gitRepository;
  /// Specifies the icon URL of the Spring Cloud Customized Accelerator..
  final pulumi.Input<String>? iconUrl;
  /// The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final pulumi.Input<String>? springCloudAcceleratorId;

  /// Creates a new [SpringCloudCustomizedAcceleratorState].
  /// [acceleratorTags] Specifies a list of accelerator tags.
  /// [acceleratorType] Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`.
  /// [description] Specifies the description of the Spring Cloud Customized Accelerator.
  /// [displayName] Specifies the display name of the Spring Cloud Customized Accelerator..
  /// [gitRepository] A `git_repository` block as defined below.
  /// [iconUrl] Specifies the icon URL of the Spring Cloud Customized Accelerator..
  /// [name] The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  /// [springCloudAcceleratorId] The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  SpringCloudCustomizedAcceleratorState({
    this.acceleratorTags,
    this.acceleratorType,
    this.description,
    this.displayName,
    this.gitRepository,
    this.iconUrl,
    this.name,
    this.springCloudAcceleratorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTags': ?acceleratorTags,
      'acceleratorType': ?acceleratorType,
      'description': ?description,
      'displayName': ?displayName,
      'gitRepository': ?pulumi.Input.mapOptionalInputValue<SpringCloudCustomizedAcceleratorGitRepository, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'iconUrl': ?iconUrl,
      'name': ?name,
      'springCloudAcceleratorId': ?springCloudAcceleratorId,
    };
  }

  factory SpringCloudCustomizedAcceleratorState.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomizedAcceleratorState(
      acceleratorTags: map['acceleratorTags'] == null ? null : ((map['acceleratorTags'] as List).cast<String>()).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      gitRepository: map['gitRepository'] == null ? null : (SpringCloudCustomizedAcceleratorGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>())).input(),
      iconUrl: map['iconUrl'] == null ? null : (map['iconUrl'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      springCloudAcceleratorId: map['springCloudAcceleratorId'] == null ? null : (map['springCloudAcceleratorId'] as String).input(),
    );
  }
}

