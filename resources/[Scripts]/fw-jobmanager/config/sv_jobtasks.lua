Config.JobTasks = {
    ["fishing"] = {
        Activity = {
            Title = "Fishing",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Go to the meeting point.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the fishing spot.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Collect fish.",
                Progress = 0,
                RequiredProgress = 30,
            },
            {
                Title = "Return to the meeting point and report that the spot is good.",
                Progress = 0,
                RequiredProgress = 1,
            },
        },
    },
    ["chopshop"] = {
        Activity = {
            Title = "Scrap Vehicles",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Go to the place where the vehicle was last seen.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Find and steal the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the scrapyard.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Scrap the valuable parts.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Leave the area.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    },
    ["sanitation"] = {
        Activity = {
            Title = "Los Santos Sanitation",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Go to the employer.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Get in the garbage truck.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the assigned zone (%s).",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Collect garbage.",
                Progress = 0,
                RequiredProgress = 15,
            },
            {
                Title = "Go to the next zone (%s).",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Collect garbage.",
                Progress = 0,
                RequiredProgress = 15,
            },
            {
                Title = "Return the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    },
    ["impound"] = {
        Activity = {
            Title = "Los Santos Impound",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Get in your flatbed.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Tow the vehicle onto your tow truck.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Drop the vehicle off at the impound.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    },
    ["houses"] = {
        Activity = {
            Title = "House Robbery",
            Timer = (60 * 1000) * 30,
        },
        Tasks = {
            {
                Title = "The boss asked you to go to the property.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Open the door.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Load the goods and get out.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    },
    ["postop"] = {
        Activity = {
            Title = "Post Op Worker",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Go to the employer.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Get in the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the assigned store.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Deliver goods.",
                Progress = 0,
                RequiredProgress = 3,
            },
            {
                Title = "Return the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    },
    ["oxy"] = {
        Activity = {
            Title = "\"Newspaper\" Seller",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Find and steal a vehicle to use as transport.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the supplier and ask for the goods.",
                Progress = 0,
                RequiredProgress = 10,
            },
            {
                Title = "Drive the transport vehicle to the location.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Wait for customers and deliver the goods.",
                Progress = 0,
                RequiredProgress = 5,
            },
            {
                Title = "Drive to the next location.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Wait for customers and deliver the goods.",
                Progress = 0,
                RequiredProgress = 5,
            },
        }
    },
    ["fooddelivery"] = {
        Activity = {
            Title = "Food Delivery",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Go to the assigned restaurant.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Collect the order.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the delivery location.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Hand in the order.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    },
    ["construction"] = {
        Activity = {
            Title = "Construction Worker",
            Timer = (60 * 1000) * 50,
        },
        Tasks = {
            {
                Title = "Go to the employer.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Get in the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Go to the construction site.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Complete all construction tasks.",
                Progress = 0,
                RequiredProgress = 1,
            },
            {
                Title = "Return the vehicle.",
                Progress = 0,
                RequiredProgress = 1,
            },
        }
    }
}
