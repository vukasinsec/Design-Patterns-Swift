
func main() {
    let s = ConcreteSubject()

    _ = ConcreteObserver(subject: s, name: "X")
    _ = ConcreteObserver(subject: s, name: "Y")
    _ = ConcreteObserver(subject: s, name: "Z")

    s.subjectState = "ABC"
    s.NotifyObservers()

    // Wait for user input
    _ = readLine()
}


main()
