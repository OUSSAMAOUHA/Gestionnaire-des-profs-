<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'prenom' => $this->faker->prenom(),
            'cin' => $this->faker->cin(),
            'photo' => $this->faker->photo(),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            
            'numDRPP' => $this->faker->numDRPP(),
            'dateRecrutement' => $this->faker->dateRecrutement(),
            'telephone' => $this->faker->telephone(),
            'dateNaissance' => $this->faker->dateNaissance(),
            'etat' => $this->faker->etat(),
            'specialite' => $this->faker->specialite(),
            'structureRecherche' => $this->faker->structureRecherche(),
            'DirecteurStructureRecherche' => $this->faker->DirecteurStructureRecherche(),
            'DS' => $this->faker->DS(),
            'DP' => $this->faker->DP(),
            'DA' => $this->faker->DA(),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return static
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
