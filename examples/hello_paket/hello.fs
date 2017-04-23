open ExtCore

printfn "Hello world"
printfn "%i" (Lib.f())
printfn "%A" (None |> Option.fill "Hello from ExtCore!")