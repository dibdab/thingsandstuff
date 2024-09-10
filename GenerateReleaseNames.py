import random

# Define two lists of strings
list1 = ["Robust","Effective","Efficient","Reliable","Resilient","Innovative","Strategic","Advanced","Comprehensive","Precise","Versatile","Agile","Solid","Stable","Dynamic","Practical","Streamlined","Timely","Optimized","Consistent","Objective","Proactive","Diligent","Meticulous","Thorough","Accurate","Sustainable","Progressive","Responsible","Transparent","Accountable","Competent","Capable","Productive","Focused","Balanced","Secure","Adaptable","Insightful","Clear","Professional","Organized","Purposeful","Resourceful","Methodical","Strong","Proficient","Tactical","Calculated","Expert","Optimal","Coordinated","Grounded","Informed","Established","Flexible","Distinct","Analytical","Creative","Distinctive","Intuitive","Dedicated","Unbiased","Skilled","Elegant","Enduring","Conscientious","Direct","Engaged","Prompt","Articulate","Astute","Observant","Savvy","Refined","Timeless","Tenacious","Vigorous","Assured","Blue","Green","Orange","Yellow"]
list2 = ["Oak","Marble","Granite","Birch","Cedar","Iron","Steel","Copper","Silver","Gold","Maple","Pine","Walnut","Silk","Wool","Linen","Crystal","Quartz","Slate","Clay","Brick","Concrete","Onyx","Fir","Mahogany","Teak","Alder","Cherry","Yew","Chestnut","Moss","Fern","Ivy","Hazel","Palm","Sandstone","Coral","Pearl","Shell","Sapphire","Topaz","Emerald","Ruby","Jade","Willow","Hickory","Juniper","Stone","Quartzite","Basalt","Flint","Obsidian","Shale","Jasper","Opal","Amethyst","Diamond","Agate","Garnet","Turquoise","Amber","Brass","Titanium","Nickel","Zinc","Aluminum","Pewter","Tin","Lead","Carbon","Ceramic","Terracotta","Gravel","Pebble","Boulder","Eagle","Falcon","Lion","Tiger","Elephant","Rhino","Bear","Wolf","Leopard","Jaguar","Zebra","Gorilla","Bison","Dolphin","Shark","Cheetah","Hyena","Leopard","Crocodile","Alligator","Eagle","Owl","Falcon","Swan","Crane","Heron","Seal","Otter","Fox", "Sparrow", "Robin", "Ox", "Horse", "Apple", "Lemon", "Lime", "Pappaya"
, "Coconut", "Argon", "Titanium", "Tungsten", "Cobalt", "Iridium", "Zinc", "Cadmium", "Platinum", "Carbon", "Xenon", "Krypton", "Tin", "Sodium", "Bronze", "Pewter", "Electrum"]

# Function to generate random combinations of strings
def generate_random_string(list1, list2, num_combinations=1000):
    combinations = []
    for _ in range(num_combinations):
        # Randomly choose one element from each list
        element1 = random.choice(list1)
        element2 = random.choice(list2)
        # Combine the chosen elements into a single string
        combination = f"{element1.lower()}-{element2.lower()}"
        combinations.append(combination)
    return combinations

# Generate and print random combinations
random_strings = generate_random_string(list1, list2)
for s in random_strings:
    print(s)