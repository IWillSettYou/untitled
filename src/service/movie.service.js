import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient()

export async function getAllMovies(){
    return await prisma.movie.findMany({
        include: {
            rendezo: true,
            szineszOnMovie: true
        }
    })
}

export async function createMovie(nev, kiadas_ev){
    const data =  await prisma.movie.create({
        data: {
            nev: nev,
            kiadas_ev: kiadas_ev
        }
    })
    return data.id
}

export async function updateMovie(id, nev, kiadas_ev){
    const data = await prisma.movie.update({
        where: {
            id: id
        },
        data: {
            nev: nev,
            kiadas_ev: kiadas_ev
        }
    })
    return data.id
}

export async function deleteMovie(id){
    return await prisma.movie.delete({
        where: {
            id: id
        }
    })

}