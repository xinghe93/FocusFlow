## HarmonyOS Version Policy

FocusFlow currently uses:

- HarmonyOS SDK 6.1.1
- API Version 24
- ArkTS
- ArkUI
- Stage Model

API 24 is the unified development baseline for the whole team.

Do not use APIs that require an API level higher than 24.

Before introducing a HarmonyOS API:

1. Verify that it exists in the installed API 24 SDK.
2. Check its official type declarations.
3. Check whether it is deprecated.
4. Prefer the newest stable implementation available in API 24.
5. Do not invent HarmonyOS APIs.
6. Do not silently increase compatibleSdkVersion or targetSdkVersion.

If a desired HarmonyOS feature is unavailable in API 24,
explain the limitation and provide the best official API 24 alternative.