protocol Gym
{
    func exercice() -> Void
}


class PushProgram : Gym
{
    func exercice() {
        benchPress()
        dips()
    }
    
    func dips() {
        print("""
              Grab the parallel bars and jump up, straighten your arms
              Lower your body by bending your arms while leaning forward
              Dip down until your shoulders are below your elbows
              Lift your body up by straightening your arms
              Lock your elbows at the top
""")
    }
    
    func benchPress()
    {
        print("""
            Draw your shoulder blades back behind you to keep from pressing with rounded shoulders.
            Grasp the barbell using an overhand grip, placing your thumbs on the outside of your closed fist. Your arms are slightly wider than shoulder-width apart and the angle of your upper arms is about 45 degrees to the body.
            Remove the barbell from the rack, locking your elbows. (Don't move the bar in an arc from the rack directly to the chest position.)
            Inhale while lowering the bar to your chest, at the nipple line.
            Exhale as you press the bar above your chest, extending your arms. Don't watch the bar—focus on the ceiling.
            Lower the bar so it is just above your chest. This is the starting position for the next bench press.
""")
    }
    
}


class PullProgram : Gym
{
    
    func exercice() {
        deadlift()
        pushUps()
    }
    
    func pushUps()
    {
        print("Just do pushUp..")
    }
    
    func deadlift()
    {
        print("Put 200kg and start lift..")
    }
    
    
}


class LegProgram : Gym
{
    
    func exercice() {
        squat()
    }
    
    func squat(){
        print("""
    1. Stand with feet a little wider than hip width, toes facing front.

    2. Drive your hips back—bending at the knees and ankles and pressing your knees slightly open—as you…

    3. Sit into a squat position while still keeping your heels and toes on the ground, chest up and shoulders back.

    4. Strive to eventually reach parallel, meaning knees are bent to a 90-degree angle.

    5. Press into your heels and straighten legs to return to a standing upright position.


""")
    }
    
}


class Solider
{
    
    var workout : Gym
    init(workout: Gym) {
        self.workout = workout
    }
    
    func train()
    {
        workout.exercice()
    }
    
}
