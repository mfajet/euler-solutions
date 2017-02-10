open System

[<EntryPoint>]
let main argv =
    let x = List.reduce (+) (List.filter (fun n -> n%3 =0 || n%5 = 0) [1..999])
    printfn "%i" x
    0
