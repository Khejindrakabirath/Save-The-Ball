import 'package:flutter/material.dart';

TextStyle fontStyle(double size, Color color, FontWeight fw) {
  return TextStyle(
    fontFamily: "FontMain",
    color: color,
    fontSize: size,
    fontWeight: fw,
  );
}

List<int> aniScore = [0];

List<int> sciEScore = [0];

List<int> sciIScore = [0];

List<int> sciHScore = [0];

List<int> aniEScore = [0];

List<int> aniIScore = [0];

List<int> aniHScore = [0];

List<int> spoEScore = [0];

List<int> spoIScore = [0];

List<int> spoHScore = [0];

Print() {
  print("$sciEScore scie");
  print("$sciIScore scii");
  print("$sciHScore ");
  print(aniEScore);
  print(aniIScore);
  print(aniHScore);
  print(spoEScore);
  print(spoIScore);
  print(spoHScore);
}

// sort() {
//   quickSort(sciEScore, 0, sciEScore.length - 1);
//   quickSort(sciIScore, 0, sciIScore.length - 1);
//   quickSort(sciHScore, 0, sciHScore.length - 1);
//   quickSort(aniEScore, 0, aniEScore.length - 1);
//   quickSort(aniIScore, 0, aniIScore.length - 1);
//   quickSort(aniHScore, 0, aniHScore.length - 1);
//   quickSort(spoEScore, 0, spoEScore.length - 1);
//   quickSort(spoIScore, 0, spoIScore.length - 1);
//   quickSort(spoHScore, 0, spoHScore.length - 1);
//   print("i am from sort");
//   print(aniEScore);
//   print(sciEScore);
// }
int temp = 0;
List<int> num = [9, 3, 8, 2, 9, 3, 5, 8];
sort1() {
  quickSort(num, 0, num.length - 1);
  print("$num aniescore");
}

quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivot = partition(list, low, high);
    quickSort(list, low, pivot - 1);
    quickSort(list, pivot + 1, high);
  }
}

partition(List<int> list, int low, int high) {
  int pivot = list[low];
  int i = low;
  int j = high;
  while (i < j) {
    do {
      i++;
    } while (list[i] <= pivot);
    do {
      j--;
    } while (list[j] > pivot);
    if (i < j) {
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }
  temp = list[low];
  list[low] = list[j];
  list[j] = temp;
  return j;
}

swap(int list1, int list2) {
  int temp;
  temp = list1;
  list1 = list2;
  list2 = temp;
}

// quickSort(List<int> list, int low, int high) {
//   if (low < high) {
//     int pi = partition(list, low, high);
//     // print("pivot: ${list[pi]} now at index $pi");

//     quickSort(list, low, pi - 1);
//     quickSort(list, pi + 1, high);
//   }
// }

// int partition(List<int> list, low, high) {
//   // Base check
//   if (list.isEmpty) {
//     return 0;
//   }
//   // Take our last element as pivot and counter i one less than low
//   int pivot = list[high];

//   int i = low - 1;
//   for (int j = low; j < high; j++) {
//     // When j is < than pivot element we increment i and swap arr[i] and arr[j]
//     if (list[j] < pivot) {
//       i++;
//       swap(list, i, j);
//     }
//   }
//   // Swap the last element and place in front of the i'th element
//   swap(list, i + 1, high);
//   return i + 1;
// }

// // Swapping using a temp variable
// void swap(List list, int i, int j) {
//   int temp = list[i];
//   list[i] = list[j];
//   list[j] = temp;
// }
// sort1() {
//   quickSort(sciEScore, 0, sciEScore.length);
// }

// void quickSort(List<int> list, int low, int high) {
//   if (low < high) {
//     int pivot = partition(list, low, high);
//     quickSort(list, low, pivot - 1);
//     quickSort(list, pivot + 1, high);
//   }
// }

// int partition(List<int> list, int low, int high) {
//   int pivot = list[high];
//   int i = (low - 1);
//   for (int j = low; j < high; j++) {
//     if (list[j] <= pivot) {
//       i++;
//       list[i] = list[i] + list[j];
//       list[j] = list[i] - list[j];
//       list[i] = list[i] - list[j];
//     }
//   }
//   list[i + 1] = list[i + 1] + list[high];
//   list[high] = list[i + 1] - list[high];
//   list[i + 1] = list[i + 1] - list[high];
//   return i + 1;
// }

//................Science Easy list..........................
List sciEWord = [
  "FROG",
  "SNAIL",
  "BAT",
  "LAMB",
  "DOG",
  "BIRD",
  "FISH",
  "WOLF",
  "LION",
  "DEER",
  "BEAR",
  "CAT",
  "COW",
  "FOX",
  "ANT",
  "BUG",
  "OWL",
  "EAGLE",
  "TIGER",
  "HIPPO",
  "RHINO",
  "CAMEL",
  "WHALE",
  "PANDA",
  "KOALA",
  "CROW"
];
List sciEHint = [
  "Amphibian with leaping ability",
  "Carries shell and slithers",
  "Nocturnal flying mammal",
  "Young sheep",
  "Domesticated canine pet",
  "Feathered flying animal",
  "Aquatic vertebrate with scales",
  "Wild canine predator",
  "Wild African cat",
  "Graceful woodland mammal",
  "Large furry mammal",
  "Small insect in colonies",
  "Domesticated bovine mammal.",
  "Cunning forest-dwelling mammal",
  "Small insect in colonies",
  "Insect or small creature",
  "Nocturnal bird of prey",
  "Majestic bird of prey",
  "Striped feline predator",
  "Large aquatic mammal",
  "Massive horned herbivore",
  "Desert-dwelling mammal with hump",
  "Gigantic marine mammal",
  "Eats bamboo and lives in jungle",
  "cute, tree-dwelling marsupial from australia",
  "Black-feathered scavenger bird"
];

//................Science Intermediate list..................
List sciIWord = [
  "BIOLOGY",
  "PHYSICS",
  "GENETICS",
  "ECOLOGY",
  "GEOLOGY",
  "MEDICINE",
  "NANOTECH",
  "QUANTUM",
  "MICROBES",
  "ENZYME"
];
List sciIHint = [
  "STUDY OF LIVING THINGS",
  "STUDY OF MATTER, ENERGY, AND THEIR INTERACTIONS",
  "STUDY OF GENES AND HEREDITY",
  "RELATIONSHIPS BETWEEN ORGANISMS AND THEIR ENVIRONMENT",
  "STUDY OF THE EARTH'S COMPOSITION AND STRUCTURE",
  "DIAGNOSIS, TREATMENT, AND PREVENTION OF DISEASE",
  "TECHNOLOGY USING VERY SMALL PARTICLES",
  "BEHAVIOR OF MATTER AT THE ATOMIC AND SUBATOMIC LEVEL",
  "MICROSCOPIC ORGANISMS LIKE BACTERIA AND VIRUSES",
  "PROTEIN THAT SPEEDS UP A BIOLOGICAL PROCESS"
];
//................Science Hard list..........................
List sciHWord = [
  "ABSORPTION",
  "AERODYNAMICS",
  "ASTROBIOLOGY",
  "ASTROPHYSICS",
  "BIODIVERSITY",
  "BIOTECHNOLOGY",
  "COMBUSTION",
  "CONSERVATION",
  "CRYSTALLIZATION",
  "DENDROCHRONOLOGY",
  "ELECTROMAGNETIC",
  "EPIDEMIOLOGY",
  "EVOLUTIONARY BIOLOGY",
  "FORENSIC SCIENCE",
  "GENETICS",
  "PALEONTOLOGY",
  "PHOTOSYNTHESIS",
  "QUANTUM MECHANICS",
  "THERMODYNAMICS"
];
List sciHHint = [
  "Taking in",
  "Air movement and objects",
  "Life beyond Earth",
  "Physical properties of stars",
  "Variety of life",
  "Using biology for technology",
  "Burning with heat and light",
  "Protecting resources",
  "Forming a solid from a liquid",
  "Dating trees by rings",
  "Electric and magnetic fields",
  "Studying disease spread",
  "How life changes over time",
  "Using science to solve crimes",
  "Study of genes and heredity",
  "Studying fossils",
  "Plants making food from sunlight",
  "Behavior of matter at the atomic level",
  "Heat, work, and temperature"
];
//................Animal Easy list............................
List aniEWord = [
  "FROG",
  "SNAIL",
  "BAT",
  "LAMB",
  "DOG",
  "BIRD",
  "FISH",
  "WOLF",
  "LION",
  "DEER",
  "BEAR",
  "CAT",
  "COW",
  "FOX",
  "ANT",
  "BUG",
  "OWL",
  "EAGLE",
  "TIGER",
  "HIPPO",
  "RHINO",
  "CAMEL",
  "WHALE",
  "PANDA"
      "KOALA",
  "CROW"
];
List aniEHint = [
  "Amphibian with leaping ability",
  "Carries shell and slithers",
  "Nocturnal flying mammal",
  "Young sheep",
  "Domesticated canine pet",
  "Feathered flying animal",
  "Aquatic vertebrate with scales",
  "Wild canine predator",
  "Wild African cat",
  "Graceful woodland mammal",
  "Large furry mammal",
  "small domestic animal like tiger",
  "Domesticated bovine mammal.",
  "Cunning forest-dwelling mammal",
  "Small insect in colonies",
  "Insect or small creature",
  "Nocturnal bird of prey",
  "Majestic bird of prey",
  "Striped feline predator",
  "Large aquatic mammal",
  "Massive horned herbivore",
  "Desert-dwelling mammal with hump",
  "Gigantic marine mammal",
  "Eats bamboo and lives in jungle",
  "cute, tree-dwelling marsupial from australia",
  "Black-feathered scavenger bird"
];
//................Animal Intermediate list....................
List aniIWord = [
  "ELEPHANT",
  "DOLPHIN",
  "SEAGULL",
  "JELLYFISH",
  "GORILLA",
  "OSTRICH",
  "GIRAFFE",
  "PARROT",
  "IGUANA",
  "WALRUS",
  "LADYBUG",
  "PEACOCK",
  "PENGUIN"
];
List aniIHint = [
  "Large mammal with long trunk",
  "Intelligent aquatic mammal",
  "Coastal flying bird",
  "Gelatinous marine creature",
  "Powerful primate species",
  "Largest flightless bird",
  "Tallest land mammal with long neck",
  "Mimics sounds",
  "Large lizard",
  "Large tusks",
  "Red with black spots",
  "Colorful fan",
  "Flightless bird native to Antartica",
];
//................Animal Hard list............................
List aniHWord = [
  "RHINOCEROS",
  "ALLIGATOR",
  "HIPPOPOTAMUS",
  "CROCODILE",
  "KANGAROO",
  "OCTOPUS",
  "ORANGUTAN",
  "CHIMPANZEE",
  "PORCUPINE",
  "HEGDEHOG",
  "FLAMINGO",
  "PLATYPUS",
  "COMODODRAGON",
  "RATTLESNAKE",
  "SNOWLEOPARD",
  "KINGCOBRA",
  "BLUEWHALE",
];
List aniHHint = [
  "Massive African horned mammal",
  "Large American reptile predator",
  "Big African river-dweller",
  " Large predatory reptile species",
  "Australian hopping marsupial mammal",
  "Eight-armed marine creature",
  " Asian red-haired primate species",
  "Intelligent African ape species",
  "Spiky quilled rodent creature",
  "Small spiny mammal creature",
  " Pink wading bird species",
  "Egg-laying Australian mammal",
  "Large Indonesian lizard species",
  "snake with a rattling sound.",
  "Ghost of the Mountain",
  "has Naja Naja as Scientfic name",
  "largest mammal on sea",
];
//................History Easy list...........................
List spoEWord = [
  "PELE",
  "MESSI",
  "GAME",
  "BALL",
  "TEAM",
  "RACE",
  "GOAL",
  "RUN",
  "GOLF",
  "SWIM",
  "KICK",
  "DIVE",
  "YOGA",
  "SURF",
  "SKI",
  "JUMP",
  "JOG",
  "HIKE",
  "SHOT",
  "SPIN",
  "LIFT",
  "SPIN"
];
List spoEHint = [
  "Most fifa wold cup winner player",
  "Most assist provider player ",
  "Often involves competition and has defined rules.",
  "Round object used in various sports activities.",
  "Group of individuals working together in a sport.",
  "Competitive event involving speed and endurance.",
  "Objective to be achieved in certain sports.",
  "Rapid movement on foot, common in many sports.",
  "Outdoor game with clubs and a small ball.",
  "Moving through water using the arms and legs.",
  "Striking a ball with the foot in various sports.",
  "Jumping into water headfirst.",
  "Physical and mental practice for health and relaxation.",
  "Riding waves on a board, often at the beach.",
  "Gliding over snow on narrow, long equipment.",
  "Springing off the ground with both feet.",
  "Gentle running for exercise or leisure.",
  "Walking in natural landscapes for recreation.",
  "Attempt to score points in various sports.",
  "Rapid rotation or turning, as in figure skating.",
  "Raising an object, often involving strength.",
  "Rapid rotation or turning, as in figure skating (yes, repeated for variety)."
];
//................History Intermediate list...................
List spoIWord = [
  "NEYMAR"
      "RONALDO"
];
List spoIHint = [""];
//................History Hard list...........................
List spoHWord = [
  "RHINOCEROS",
  "ALLIGATOR",
  "HIPPOPOTAMUS",
  "CROCODILE",
  "KANGAROO",
  "OCTOPUS",
  "ORANGUTAN",
  "CHIMPANZEE",
  "PORCUPINE",
  "HEGDEHOG",
  "FLAMINGO",
  "PLATYPUS",
  "COMODODRAGON",
  "RATTLESNAKE",
  "SNOWLEOPARD",
  "KINGCOBRA",
  "BLUEWHALE",
];
List spoHHint = [
  "Massive African horned mammal",
  "Large American reptile predator",
  "Big African river-dweller",
  " Large predatory reptile species",
  "Australian hopping marsupial mammal",
  "Eight-armed marine creature",
  " Asian red-haired primate species",
  "Intelligent African ape species",
  "Spiky quilled rodent creature",
  "Small spiny mammal creature",
  " Pink wading bird species",
  "Egg-laying Australian mammal",
  "Large Indonesian lizard species",
  "snake with a rattling sound.",
  "Ghost of the Mountain",
  "has Naja Naja as Scientfic name",
  "largest mammal on sea",
];

///////////////////////////////////////////////////////////////////////////
List<String> alphabets = [
  'Q',
  'W',
  'E',
  'R',
  'T',
  'Y',
  'U',
  'I',
  'O',
  'P',
  'A',
  'S',
  'D',
  'F',
  'G',
  'H',
  'J',
  'K',
  'L',
  'Z',
  'X',
  'C',
  'V',
  'B',
  'N',
  'M',
];
