/// Default is INSTALLED. The desired state the agent should maintain for this recipe. INSTALLED: The software recipe is installed on the instance but won't be updated to new versions. UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version, if a higher version of the recipe is assigned to this instance. REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
enum SoftwareRecipeDesiredState {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  updated("UPDATED"),
  removed("REMOVED");

  const SoftwareRecipeDesiredState(this.value);
  final String value;

  static SoftwareRecipeDesiredState fromValue(String value) {
    for (final item in SoftwareRecipeDesiredState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareRecipeDesiredState value: $value');
  }
}

