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
    pulumi.Output<List<String>>? acceleratorTags,
    pulumi.Output<String>? acceleratorType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<SpringCloudCustomizedAcceleratorGitRepository>? gitRepository,
    pulumi.Output<String>? iconUrl,
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudAcceleratorId,
  }) :
      acceleratorTags = pulumi.Input.asOptionalInput<List<String>>(acceleratorTags),
      acceleratorType = pulumi.Input.asOptionalInput<String>(acceleratorType),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gitRepository = pulumi.Input.asOptionalInput<SpringCloudCustomizedAcceleratorGitRepository>(gitRepository),
      iconUrl = pulumi.Input.asOptionalInput<String>(iconUrl),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudAcceleratorId = pulumi.Input.asOptionalInput<String>(springCloudAcceleratorId);

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
      acceleratorTags: map['acceleratorTags'] == null ? null : pulumi.Output.create<List<String>>((map['acceleratorTags'] as List).cast<String>()),
      acceleratorType: map['acceleratorType'] == null ? null : pulumi.Output.create<String>(map['acceleratorType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gitRepository: map['gitRepository'] == null ? null : pulumi.Output.create<SpringCloudCustomizedAcceleratorGitRepository>(SpringCloudCustomizedAcceleratorGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>())),
      iconUrl: map['iconUrl'] == null ? null : pulumi.Output.create<String>(map['iconUrl'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudAcceleratorId: map['springCloudAcceleratorId'] == null ? null : pulumi.Output.create<String>(map['springCloudAcceleratorId'] as String),
    );
  }
}

