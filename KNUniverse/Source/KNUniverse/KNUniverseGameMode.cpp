// Copyright Epic Games, Inc. All Rights Reserved.

#include "KNUniverseGameMode.h"
#include "KNUniverseCharacter.h"
#include "UObject/ConstructorHelpers.h"

AKNUniverseGameMode::AKNUniverseGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPersonCPP/Blueprints/ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
